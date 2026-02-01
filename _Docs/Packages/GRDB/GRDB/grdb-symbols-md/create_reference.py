#!/usr/bin/env python3
import json
import os
from collections import defaultdict

registry_path = "/Users/malik/Developer/grdb/grdb-symbols-md/registry.json"
output_base = "/Users/malik/Developer/grdb/GRDB.swift/Documentation/Reference"

with open(registry_path, 'r') as f:
    registry = json.load(f)

files = registry.get("files", [])

DOMAIN_GROUPS = {
    "Associations": [
        "association", "hasmany", "hasone", "belongsto", "hasonethrough", "hasmanythrough",
        "joinassociation", "associationaggregate", "associationtomany"
    ],
    "Records": [
        "record", "persistable", "fetchable", "mutablepersistable", "encodablerecord",
        "persistencecontainer", "persistenceerror", "persistencesuccess", "insertionsuccess"
    ],
    "Requests": [
        "request", "fetchrequest", "aggregatingrequest", "filteredrequest", "orderedrequest",
        "queryinterfacerequest", "selectionrequest", "joinablerequest", "derivablerequest",
        "typedrequest", "preparedrequest", "sqlrequest"
    ],
    "Cursors": [
        "cursor", "anycursor", "rowcursor", "recordcursor", "mapcursor", "filtercursor",
        "dropfirstcursor", "dropwhilecursor", "prefixcursor", "prefixwhilecursor",
        "flattencursor", "enumeratedcursor", "fastdatabasevaluecursor", "databasevaluecursor",
        "sqlstatementcursor", "sqlsubquery"
    ],
    "Database": [
        "database", "databasequeue", "databasepool", "databasesnapshot", "databasesnapshotpool",
        "databasesnapshotreader", "databasereader", "databasewriter", "anydatabasereader",
        "anydatabasewriter", "anydatabasecancellable", "databasecancellable"
    ],
    "Transactions": [
        "transactionclock", "customtransactionclock", "defaulttransactionclock"
    ],
    "Migrations": [
        "migrator", "commontableexpression"
    ],
    "Values": [
        "databasevalue", "databasevalueconvertible", "statementcolumnconvertible",
        "sqlspecificexpressible", "sqlexpressible", "anysqljsonexpressible",
        "sqljsonexpressible", "databasedatadecodingstrategy", "databasedataencodingstrategy",
        "databasecolumndecodingstrategy", "databasecolumnencodingstrategy"
    ],
    "Dates": [
        "databasedatecomponents", "databasedatedecodingstrategy", "databasedateencodingstrategy",
        "sqldatemodifier", "julianday", "datetime"
    ],
    "FullTextSearch": [
        "fts3", "fts4", "fts5", "fts3pattern", "fts5pattern", "fts3tabledefinition",
        "fts4tabledefinition", "fts5tabledefinition", "fts3tokenizerdescriptor",
        "fts5tokenizerdescriptor", "fts5tokenizer", "fts5customtokenizer",
        "fts5wrappertokenizer", "fts5tokenization", "fts5tokenflags"
    ],
    "Schema": [
        "table", "tabledefinition", "tablealteration", "tableoptions", "tablealias",
        "tablealiasbase", "column", "columndefinition", "columnexpression", "columninfo",
        "columnassignment", "indexinfo", "indexoptions", "primarykeyinfo", "foreignkey",
        "foreignkeydefinition", "foreignkeyinfo", "foreignkeyviolation", "allcolumns",
        "allcolumnsexcluding"
    ],
    "SQL": [
        "sql", "sqlinterpolation", "sqlexpression", "sqlsubqueryable", "sqlselectable",
        "sqlordering", "sqlorderingterm", "sqlselection", "statement", "statementarguments",
        "statementbinding"
    ],
    "Observations": [
        "valueobservation", "asyncvalueobservation", "sharedvalueobservation",
        "delayedmainactorvalueobservationscheduler", "immediatevalueobservationscheduler",
        "taskvalueobservationscheduler", "valueobservationscheduler",
        "asyncvalueobservationscheduler", "valuereducer", "valuereducers"
    ],
    "Errors": [
        "databaseerror", "recorderror", "rowdecodingerror"
    ],
    "Configuration": [
        "configuration", "databasecollation", "databasefunction", "virtualtablemodule",
        "virtualtableoptions", "dumpformat", "debugdumpformat", "jsondumpformat",
        "listdumpformat", "linedumpformat", "quotedumpformat", "dumpstream",
        "dumptableheaderoptions", "inflections"
    ],
    "Foundation": [
        "foundation", "swift", "corefoundation"
    ],
    "Publishers": [
        "databasepublishers"
    ],
    "Events": [
        "databaseevent", "databaseeventkind", "transactionobserver", "databaseregionobservation"
    ],
    "Regions": [
        "databaseregion", "databaseregionconvertible", "databaseschemaid", "databaseschemasource"
    ],
    "Backups": [
        "databasebackupprogress"
    ],
    "RowAdaptors": [
        "rowadapter", "rangeadapter", "emptyrowadapter", "suffixrowadapter",
        "scopeadapter", "renamecolumnadapter", "splittingrowadapters"
    ],
    "Miscellaneous": [
        "grdb_versionnumber", "grdb_versionstring", "grdbsendablemetatype", "databaseobjectid",
        "databaseaggregate", "cursor-implementations", "sqlexpressible-implementations",
        "sqlsubqueryable-implementations", "sqlselectable-implementations",
        "sqlspecificexpressible-implementations", "databasevaluecursor"
    ]
}

def categorize_symbol(name, category):
    """Determine which domain a symbol belongs to."""
    name_lower = name.lower()
    category_lower = category.lower()
    
    for domain, keywords in DOMAIN_GROUPS.items():
        for keyword in keywords:
            if keyword in name_lower or keyword in category_lower:
                return domain
    return "Miscellaneous"

def build_domain_index():
    """Build index of symbols by domain."""
    domain_index = defaultdict(list)
    
    for entry in files:
        domain = categorize_symbol(entry["name"], entry["category"])
        domain_index[domain].append(entry)
    
    return domain_index

def create_reference_files(domain_index):
    """Create reference markdown files organized by domain."""
    os.makedirs(output_base, exist_ok=True)
    
    for domain, entries in domain_index.items():
        filename = f"{domain.replace(' ', '').lower()}.md"
        filepath = os.path.join(output_base, filename)
        
        content = []
        content.append(f"# {domain}\n")
        content.append(f"\nThis reference contains {len(entries)} symbols related to {domain.lower()}.\n")
        content.append("\n---\n")
        
        for entry in entries:
            content.append(f"## `{entry['name']}`\n")
            content.append(f"- **File:** `{entry['file']}`")
            content.append(f"- **Category:** `{entry['category']}`")
            content.append("\n---\n")
        
        with open(filepath, 'w') as f:
            f.write("\n".join(content))
        
        print(f"Created: {filepath} ({len(entries)} entries)")
    
    return list(domain_index.keys())

def create_master_index(domains):
    """Create master index file linking to all reference files."""
    content = []
    content.append("# GRDB Reference\n")
    content.append("\nComplete API reference for GRDB.swift, organized by domain.\n")
    content.append("\n## Domains\n")
    
    for domain in sorted(domains):
        filename = domain.replace(' ', '').lower()
        content.append(f"- [{domain}]({filename}.md)")
    
    content.append("\n---\n")
    content.append("*Generated from GRDB documentation archive.*")
    
    filepath = os.path.join(output_base, "index.md")
    with open(filepath, 'w') as f:
        f.write("\n".join(content))
    
    print(f"Created master index: {filepath}")

def main():
    domain_index = build_domain_index()
    domains = create_reference_files(domain_index)
    create_master_index(domains)
    
    print(f"\nReference folder: {output_base}")
    print(f"Domains covered: {len(domains)}")

if __name__ == "__main__":
    main()
