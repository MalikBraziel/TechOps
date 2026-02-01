#!/usr/bin/env python3
import os
import json
from pathlib import Path

source_dir = "/Users/malik/Developer/grdb/grdb-symbols-md/Raw/documentation/grdb"
output_dir = "/Users/malik/Developer/grdb/grdb-symbols-md"
registry_path = os.path.join(output_dir, "registry.json")

def extract_text_from_tokens(tokens):
    """Reconstruct text from token array."""
    if not tokens:
        return ""
    return "".join(token.get("text", "") for token in tokens)

def extract_abstract(json_data):
    """Extract abstract text from JSON."""
    abstract = json_data.get("abstract", [])
    if isinstance(abstract, list):
        return " ".join(item.get("text", "") for item in abstract if isinstance(item, dict))
    return str(abstract) if abstract else ""

def extract_declaration(json_data):
    """Extract declaration code from primaryContentSections."""
    sections = json_data.get("primaryContentSections", [])
    for section in sections:
        if section.get("kind") == "declarations":
            tokens = []
            for declaration in section.get("declarations", []):
                tokens.extend(declaration.get("tokens", []))
            return extract_text_from_tokens(tokens)
    return ""

def extract_parameters(json_data):
    """Extract parameters from JSON."""
    params = []
    for section in json_data.get("primaryContentSections", []):
        if section.get("kind") == "parameters":
            for param in section.get("content", []):
                if isinstance(param, dict):
                    name = param.get("name", "")
                    content = param.get("content", [])
                    if isinstance(content, list):
                        abstract = " ".join(item.get("text", "") for item in content if isinstance(item, dict))
                        if name and abstract:
                            params.append(f"  - `{name}`: {abstract}")
    return params

def extract_metadata(json_data):
    """Extract key metadata fields from JSON."""
    meta = json_data.get("metadata", {})
    
    return {
        "symbolKind": meta.get("symbolKind", ""),
        "roleHeading": meta.get("roleHeading", "")
    }

def process_folder(folder_path, registry):
    """Process a folder and create markdown files."""
    items = sorted(os.listdir(folder_path))
    
    markdown_content = []
    index_entries = []
    
    for item in items:
        item_path = os.path.join(folder_path, item)
        if os.path.isfile(item_path) and item.endswith('.json'):
            try:
                with open(item_path, 'r', encoding='utf-8') as f:
                    json_data = json.load(f)
                
                symbol_name = item.replace('.json', '')
                index_entries.append(symbol_name)
                
                markdown_content.append(f"## `{symbol_name}`\n")
                
                abstract = extract_abstract(json_data)
                if abstract:
                    markdown_content.append(f"> {abstract}\n")
                
                declaration = extract_declaration(json_data)
                if declaration:
                    markdown_content.append(f"```swift\n{declaration}\n```\n")
                
                params = extract_parameters(json_data)
                if params:
                    markdown_content.append("### Parameters\n" + "\n".join(params) + "\n")
                
                metadata = extract_metadata(json_data)
                if metadata["symbolKind"]:
                    markdown_content.append(f"- **Symbol Kind:** {metadata['symbolKind']}\n")
                if metadata["roleHeading"]:
                    markdown_content.append(f"- **Role Heading:** {metadata['roleHeading']}\n")
                
                markdown_content.append("\n---\n")
                
            except Exception as e:
                print(f"Error processing {item_path}: {e}")
    
    if index_entries:
        header = f"# Index\n\n" + "\n".join(f"- `{name}`" for name in index_entries) + "\n\n---\n\n"
        markdown_content.insert(0, header)
    
    return "\n".join(markdown_content), index_entries

def main():
    os.makedirs(output_dir, exist_ok=True)
    
    registry = {
        "version": "1.0",
        "categories": {},
        "files": []
    }
    
    for item in os.listdir(source_dir):
        item_path = os.path.join(source_dir, item)
        
        if os.path.isdir(item_path):
            content, entries = process_folder(item_path, registry)
            
            if content:
                output_filename = f"{item}.md"
                output_path = os.path.join(output_dir, output_filename)
                
                with open(output_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                
                print(f"Created: {output_path} ({len(entries)} entries)")
                
                for entry in entries:
                    registry["files"].append({
                        "name": entry,
                        "file": output_filename,
                        "category": item
                    })
    
    with open(registry_path, 'w', encoding='utf-8') as f:
        json.dump(registry, f, indent=2)
    
    print(f"Created registry: {registry_path} ({len(registry['files'])} entries)")

if __name__ == "__main__":
    main()
