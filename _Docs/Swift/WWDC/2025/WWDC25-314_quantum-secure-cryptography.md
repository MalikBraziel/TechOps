---
URL: https://developer.apple.com/videos/play/wwdc2025/314/
Title: Get ahead with quantum-secure cryptography
Topics:
Date_Published: June 2025
Swift_Version_At_Publish: Swift 6.1
---

# Get ahead with quantum-secure cryptography

Learn how to protect your app's sensitive user data from the emerging threat of quantum computing, and safeguard user privacy. We'll explore different quantum attacks, their impact on existing cryptographic protocols, and how to defend against them using quantum-secure cryptography. You'll learn how to use quantum-secure TLS to secure network data, and use CryptoKit's quantum-secure APIs for securing application data.

### Chapters

- 0:00 - [Introduction](https://developer.apple.com/videos/play/wwdc2025/314/?time=0)
- 1:18 - [Quantum attacks](https://developer.apple.com/videos/play/wwdc2025/314/?time=78)
- 4:49 - [Quantum-secure cryptography](https://developer.apple.com/videos/play/wwdc2025/314/?time=289)
- 8:56 - [Protecting network data](https://developer.apple.com/videos/play/wwdc2025/314/?time=536)
- 12:08 - [Protecting custom protocols](https://developer.apple.com/videos/play/wwdc2025/314/?time=728)

### Resources

- [Apple CryptoKit](https://developer.apple.com/documentation/CryptoKit)
- [Message with PQ3: The new state of the art in quantum-secure messaging at scale](https://security.apple.com/blog/imessage-pq3/)
- [Prepare your network for quantum-secure encryption in TLS](https://support.apple.com/122756)
- [Using the quantum-secure APIs](https://developer.apple.com/documentation/CryptoKit/using-the-quantum-secure-apis)
- [HD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/314/4/69450908-6907-44d0-9f37-9ffdec893aa2/downloads/wwdc2025-314_hd.mp4?dl=1)
- [SD Video](https://devstreaming-cdn.apple.com/videos/wwdc/2025/314/4/69450908-6907-44d0-9f37-9ffdec893aa2/downloads/wwdc2025-314_sd.mp4?dl=1)

## Transcript

<Transcript>

0:07

Hi, I’m Cathie from the Cryptography Engineering team. This video is about how you can get ahead with quantum secure cryptography.

0:15

You create applications that occupy a privileged place in people’s lives. Your app can have access to personal and sensitive data about users, and uses cryptography to protect that data.

0:27

However, the rise of quantum computing threatens the security of this cryptography, with quantum attacks breaking or weakening many widely used algorithms. You need to get ahead of this risk by moving to quantum-secure cryptography. I'll start by going over different quantum attacks on cryptography, what protocols they affect, and how you can defend against them with quantum-secure cryptography. Next, I'll discuss how you should protect network data from quantum attacks by using quantum-secure encryption in TLS. Last, I’ll go over how you can protect custom protocols by using the new quantum-secure APIs in CryptoKit.

1:08

I’ll start with quantum attacks on cryptography.

1:12

Think about an app that has access to personal and sensitive data like health, location, and photos. It uses cryptography to protect this data. For example, it uploads this data to a server for backup and synchronization across devices. This data is protected with TLS. For these and many other workflows, cryptography is critical to the security of user data.

1:40

However, this cryptography is under threat from quantum attacks. This includes encryption, which is used to ensure confidentiality of data, and signatures, which are used to ensure authenticity of data.

1:54

Experts agree that sufficiently powerful quantum computers are on the horizon, and some quantum attacks are relevant now, even before these quantum computers exist.

2:07

For example, an attacker can currently be harvesting encrypted data with a harvest now, decrypt later attack. Here’s how the attack could work.

2:18

Going back to the previous example, the app has sensitive user data like health, location, and photos, and wants to send it to the server. It encrypts the data with TLS and sends it. An attacker observing the network can harvest that encrypted data and store it. They can’t decrypt it just yet, but they can wait until they have access to a sufficiently powerful quantum computer in in the future, and then decrypt the harvested data to gain access to the sensitive user data.

2:52

The harvest now, decrypt later attack affects encrypted data an attacker can access, especially data in transit. It affects apps that send data to a server, sync data across devices, or otherwise send encrypted data over the network. It breaks confidentiality, as the attacker can read the network traffic after decrypting it. Attackers can already be harvesting network traffic right now, so we all need to take steps now to mitigate this attack.

3:24

In contrast with the passive harvest now, decrypt later attack, now I’ll go through an example of an active attack, where an attacker with a quantum computer needs to be actively involved in the protocol.

3:37

Imagine an example app that has a signing key tied to a user. The app uses that key to authenticate the user to the server with a signature.

3:47

An attacker observing network traffic intercepts that signature.

3:52

Using a sufficiently powerful quantum computer, they break the cryptography and steal the signing key. They use the stolen key to make a signature, which they send to the server to impersonate the user. The server accepts the attacker’s signature as if it came from the user. The attacker then carries out actions on behalf of the user.

4:17

The active attack I went over affects signatures. It breaks authenticity, as the attacker can forge authentication and carry out actions on behalf of the victim. It affects apps that perform user authentication, such as with WebAuth and multi-factor authentication, and apps that perform data authentication, such as with asset signing. It is a future threat because sufficiently powerful quantum computers don't yet exist to carry out this attack. However, they are on the horizon.

4:49

Quantum attacks are a very real threat to the security of widely deployed cryptography. To get ahead of these attacks, the cryptography community has been focusing on creating and standardizing new algorithms that are secure against quantum attacks, known as quantum-secure cryptography. These algorithms are ready for adoption today. They can run on the classical, non-quantum computers that are being used today, but will remain secure from attacks by both classical and quantum computers. I’ll go into more detail, but keep in mind that even if the cryptography is complex, the fixes are straightforward.

5:26

Cryptography can be divided into public-key and symmetric-key cryptography.

5:32

These categories are affected differently by quantum attacks, and therefore have different mitigation strategies.

5:39

I’ll start with public-key cryptography, which includes public-key encryption and signatures. Classical public-key cryptography is based on mathematical problems such as RSA and discrete log on elliptic curves that are too computationally intensive for classical computers to solve.

5:58

However, quantum computers will be able to solve these problems exponentially faster than classical computers, breaking these algorithms.

6:07

Therefore, they need to be replaced with quantum-secure algorithms, which are too computationally intensive for both classical and quantum computers to solve.

6:18

For quantum-secure encryption, you should use Post-quantum Hybrid Public Key Encryption, or Post-quantum HPKE for short.

6:27

For quantum-secure signing, you should use Post-quantum Hybrid Signatures. These are both post-quantum hybrid constructions, meaning they combine new, post-quantum algorithms with current classical algorithms. Breaking a hybrid construction requires breaking both the post-quantum algorithm and the classical algorithm, so hybrid constructions give the best security assurances and are Apple’s recommendation for quantum-secure cryptography. Symmetric-key cryptography includes symmetric-key encryption and message authentication codes. These algorithms are also based on mathematical problems that are hard for classical computers. But these problems are affected by quantum computers quite differently than classical public-key algorithms.

7:14

Quantum computers can only achieve a small, constant factor reduction of the security of these problems, so they only weaken symmetric-key cryptography.

7:23

Therefore, symmetric-key algorithms that are classically secure can be made quantum-secure by doubling their key size.

7:31

Upgrade your 128-bit key ciphers to use 256-bit keys instead. For example, move from AES-128 to AES-256. To tie back to the quantum attacks I discussed, the highest priority in the migration to quantum-secure cryptography is to defend against harvest now, decrypt later attacks. This is because protocols that send encrypted data in transit could be getting their data harvested right now. To defend against this, you need to migrate to use quantum- secure encryption for data in transit. This is especially important if your protocol handles sensitive user data.

8:14

In fact, protecting against this attack is so important that Apple has already done this for iMessage.

8:21

iMessage protects sensitive user conversations sent over the network. To get ahead of quantum attacks, in iOS 17.4, Apple launched iMessage PQ3, which is the state of the art in quantum- secure messaging at scale. This rebuilt the iMessage cryptographic protocol from the ground up to provide quantum-secure hybrid encryption for initial key establishment and ongoing rekeying in conversations. Read the Apple Security Blog for more details about the motivation and design of iMessage PQ3. iMessage PQ3 is a huge advance in quantum-secure messaging at scale, but it is only the tip of the iceberg for protecting network data. Most network data, including all HTTPS traffic, is protected with TLS. I’ll talk about how to defend that data from quantum attacks by upgrading to quantum-secure TLS.

9:18

TLS 1.3 has a quantum-secure encryption upgrade to protect network data from harvest now, decrypt later attacks. This upgrade uses a quantum-secure key exchange and has been enabled through standardization efforts by the National Institute of Standards and Technology and the Internet Engineering Task Force.

9:38

Quantum-secure encryption in TLS has already been adopted by major service providers. It’s ready for you to use and is straightforward to enable.

9:49

Starting in iOS 26, quantum-secure encryption in TLS is enabled by default on Apple operating systems, for the recommended networking APIs, URLSession, and Network.framework. Note that just like classical TLS, this protects communication between the client and the TLS terminating server.

10:10

You should migrate away from legacy Networking APIs, such as Secure Transport, as these will not support quantum-secure TLS.

10:18

Custom networking stacks can be more challenging to upgrade. This is a great opportunity to migrate to URLSession, or to back your networking stack with Network.framework.

10:29

In order to have quantum-secure encryption in TLS working between devices and your servers, you also need to enable it on the server side. The majority of developers use a content or website hosting provider. Most of these already have support for quantum-secure encryption in TLS. It may be enabled by default, or you can easily enable it with a configuration change. When deploying your own servers, there is a bit more work involved, as you need to explicitly upgrade your TLS libraries and configuration. To learn more, read the documentation for how to prepare your network for quantum-secure encryption in TLS.

11:09

You might be using some system services, which encrypt data from devices to Apple servers. Apple is leading by example, so in iOS 26, these system services will have quantum-secure encryption in TLS enabled on the client side and rolling out on the server side. CloudKit stores your app’s data in iCloud and synchronizes it across devices and on the web.

11:34

Apple Push Notifications allow your app to deliver timely and relevant content to your users.

11:41

And iCloud Private Relay protects DNS and any unencrypted HTTP traffic in your app. And these system services are all enabling quantum-secure encryption in TLS.

11:54

Apple built-in apps that handle sensitive user data, such as Safari, Weather, and Maps, are also rolling out support for quantum-secure encryption in TLS. And now your app should as well.

12:09

For most developers, using quantum-secure encryption in TLS is sufficient to protect from harvest now, decrypt later attacks. However, TLS isn’t the only way to protect data in transit. You may have custom cryptography protocols, where you’re using cryptography APIs directly to protect data. If so, you need to migrate to use quantum-secure cryptography APIs instead.

12:34

To do this, you first need to inventory your current use of cryptography. You need to identify where your protocols use quantum-impacted cryptography, such as encrypted data in transit and signatures.

12:47

Plan for how to update these protocols to use quantum-secure cryptography instead. Then, use CryptoKit to implement these updates, thanks to the new quantum secure APIs.

12:59

CryptoKit is a Swift framework available on all Apple platforms with APIs for cryptography algorithms. In iOS 26, CryptoKit has new quantum-secure APIs which are performant, easy to use, and secure. They provide additional protection against timing and side-channel attacks by enforcing hardware-isolated execution with Secure Enclave. They also have correctness guarantees, as the core implementations are formally verified, meaning they have been proven to be functionally equivalent to standardized specifications.

13:33

To show how to use the new CryptoKit APIs, I’ll go through an example: Climbing app, which uses a custom cryptography protocol to protect app data in transit.

13:44

Say you’re making an app that has access to a user’s health data, geolocation tracks, and photos taken on climbing trips. You want to provide end-to-end encryption of this data to the user’s other devices. This is sensitive information, that you want to keep private from the server and from attackers. To achieve this, you create a custom protocol that encrypts the data to the user’s other devices and relays the encrypted data through the server.

14:14

Having quantum-secure TLS is not sufficient here, as TLS protects communication between the client and the TLS terminating server, and in this example, you don’t want to reveal the user data to the server.

14:27

Any app which encrypts data in transit, like this example Climbing app, needs to use quantum-secure encryption to protect against harvest now, decrypt later attacks.

14:38

Starting in iOS 26, CryptoKit supports a quantum-secure encryption API based on Post-quantum Hybrid Public Key Encryption, or Post-quantum HPKE for short. This is perfect for your example Climbing app to migrate to, to protect your sensitive user data against quantum attacks. I’ll go through a code sample to demonstrate how you can use this new API.

15:02

The sender and receiver both define the Post-quantum HPKE ciphersuite from X-Wing. I’ll go into more details about X-Wing after the sample code demo. On the recipient side, you make an X-Wing key pair. If your app already uses classical HPKE with CryptoKit, migrating to Post-quantum HPKE is just a change of cyphersuite and key type So the only parts specific to the quantum-secure HPKE API are these first few lines.

15:33

The recipient shares their public key.

15:36

You then create the sender with the recipient’s public key, and create the recipient with the sender’s encapsulated key.

15:47

The sender creates a ciphertext by encrypting the sensitive user data, such as health data, geolocation tracks, or photos, along with authenticated metadata. It sends it to the recipient.

16:01

The recipient decrypts the ciphertext by opening it along with the same authenticated metadata.

16:07

Now, the user’s climbing trip data has been sent from the sender to the recipient device with quantum-secure end-to-end encryption.

16:17

As I went over in the sample code, you should use Post-quantum HPKE for quantum-secure encryption. This establishes the HPKE shared key using the X-Wing Key Encapsulation Mechanism or KEM for short.

16:32

Post-quantum HPKE and X-Wing are post-quantum hybrid constructions, meaning they combine post-quantum and classical algorithms to get the security guarantees of both.

16:46

ML-KEM is the post-quantum building block for X-Wing KEM, as well as other post-quantum KEMs.

16:53

ML-KEM has a larger encryption size overhead than its classical counterparts. But it is performant with comparable or better performance than its classical counterparts. CryptoKit uses a formally verified implementation of ML-KEM, which has been proven to be functionally equivalent to the FIPS 203 standardized specification. It also has Secure Enclave support, meaning you can enforce hardware-isolated execution for ML-KEM operations.

17:21

We discussed how you should encrypt data using Post-quantum HPKE, which is a high-level API available in CryptoKit. If you need to implement your own cryptographic protocols, such as to support a protocol specification, CryptoKit has low-level quantum-secure APIs available as well.

17:41

Post-quantum HPKE uses X-Wing for key encapsulation, which uses ML-KEM as its post-quantum building block. CryptoKit now supports all of these as encryption APIs. Similarly, quantum-secure signatures use ML-DSA as their post-quantum building block. CryptoKit now also supports ML-DSA as a signature API. Like ML-KEM, the ML-DSA implementation has Secure Enclave support.

18:09

The ML-DSA API can be used to build post-quantum hybrid signatures at the application code level.

18:16

The CryptoKit APIs run client-side, on-device. Some protocols require cryptographic interoperability between the client and server. One of the easiest ways to support this is to use Swift Crypto on the server. Swift Crypto is a Swift library that provides API compatibility with CryptoKit for servers, to ensure seamless development.

18:39

This includes server compatibility for all the quantum-secure APIs that CryptoKit supports in iOS 26. Note that because these quantum-secure APIs are implementations of standardized protocols, you can use any standards-compatible library on the server side. With these new quantum-secure APIs in CryptoKit and Swift Crypto, you now have the tools to protect your app from quantum attacks by migrating to quantum-secure cryptography. Check out the sample code in the video resources for more examples of how to use these new APIs.

19:14

Now you know how to protect your app’s data against quantum attacks. First and foremost, make sure your network data is protected with quantum-secure encryption in TLS. This is easy, especially if you use the recommended networking APIs, which have it enabled by default.

19:33

Update your server configuration to enable it on the server side.

19:38

For custom cryptography protocols, use the new quantum-secure CryptoKit APIs. Use post-quantum HPKE for encrypting data, like in the example Climbing app.

19:50

Quantum attacks aren’t a distant possibility. They are relevant now, and we all need to get ahead of them by moving to quantum-secure cryptography. So as climbers say, send it.

</Transcript>

## Code

15:00 - [HPKE code sample](https://developer.apple.com/videos/play/wwdc2025/314/?time=900)

```swift
let ciphersuite = HPKE.Ciphersuite.XWingMLKEM768X25519_SHA256_AES_GCM_256

// Recipient
let privateKey = try XWingMLKEM768X25519.PrivateKey.generate()
let publicKey = privateKey.publicKey

// Sender
var sender = try HPKE.Sender(recipientKey: publicKey, ciphersuite: ciphersuite, info: info)
let encapsulatedKey = sender.encapsulatedKey

// Recipient
var recipient = try HPKE.Recipient(privateKey: privateKey, ciphersuite: ciphersuite, info: info, encapsulatedKey: encapsulatedKey) 

// Sender encrypts data
let ciphertext = try sender.seal(userData, authenticating: metadata)

// Recipient decrypts message
let decryptedData = try recipient.open(ciphertext, authenticating: metadata)
#expect(userData == decryptedData)
```