<h3 align="center">CrossPipe Server</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> An efficient IPC server that enables seamless and secure communication between processes in web applications, enhancing performance and simplifying development.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Installing](#installing)
- [Building From Source](#building_from_source)
- [Usage](#usage)
- [Built Using](#built_using)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

CrossPipe is an IPC server that focuses on efficient and reliable communication between processes in an operating system, with a particular emphasis on supporting web applications. It facilitates data and command transmission, making it valuable for web-based application development. CrossPipe offers dedicated APIs and protocols for seamless communication and data exchange between web applications and server processes. It ensures high performance, low latency, and secure data transmission, enabling smooth interactions between client-side and server-side components.

Developers can simplify web application development by leveraging CrossPipe for efficient coordination, data sharing, and synchronization between application components, ultimately improving performance and reliability. CrossPipe also eases the development of distributed computing systems, microservices architectures, and cloud-based applications, offering versatile inter-process communication capabilities tailored to the needs of web developers. Its efficient communication channels enhance functionality and user experience, making it a valuable tool in web development.

## 💿 Installing <a name = "installing"></a>

- Download latest release from [Releases tab]() for your OS and CPU architecture
  or [build it from source](#building_from_source).
- Move executable file to `/usr/bin/`
- [Use it!](#usage)

## 🏗️ Building From Source <a name = "building_from_source"></a>

```shell
# Clone this repository
$ git clone <Insert URL> crosspipe-server
# Go to cloned repository
$ cd crosspipe-server
# Install dependencies
$ dart pub get
# Generate schemas
$ dart run build_runner build
# Build executable
$ dart compile exe ./bin/crosspipe.dart
```

## 🎈 Usage <a name="usage"></a>

### Config
First of all, you need a configuration file, [an example can be found in the repository](./config.example.yaml)

### Start server
After you have written the configuration file, you can start the server by specifying path to the configuration file in arguments.

```shell
$ crosspipe start -c ./config.yaml
```

## 🧰 Built Using <a name = "built_using"></a>

- [Dart SDK](https://dart.dev/) - Programming language and great SDK!

## 🤝 Acknowledgements <a name = "acknowledgement"></a>

- [The Documentation Compendium](https://github.com/kylelobo/The-Documentation-Compendium)
- [dmemsm](https://github.com/code-debug228) 
