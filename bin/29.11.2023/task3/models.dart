class Device {
  late String name;
  late String brand;
  late String model;
  late int release_year;
  late String color;
  late Display display;
  late Processor processor;
  late Memory memory;
  late Camera camera;
  late Battery battery;
  late Connectivity connectivity;
  late String operating_system;
  late List<String> features;

  Device(this.name, this.brand, this.model, this.release_year, this.color, this.display, this.processor, this.memory, this.camera, this.battery, this.connectivity, this.operating_system, this.features);

  Device.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    brand = json["brand"];
    model = json["model"];
    release_year = json["release_year"];
    color = json["color"];
    display = Display.fromJson(json["display"]);
    processor = Processor.fromJson(json["processor"]);
    memory = Memory.fromJson(json["memory"]);
    battery = Battery.fromJson(json["battery"]);
    connectivity = Connectivity.fromJson(json["connectivity"]);
    operating_system = json["operating_system"];
    features = List.from(json["features"].map((e) => e));
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "brand": brand,
        "model": model,
        "release_year": release_year,
        "color": color,
        "display": display.toJson(),
        "processor": processor.toJson(),
        "memory": memory.toJson(),
        "battery": memory.toJson(),
        "connectivity": connectivity.toJson(),
        "operating_system": operating_system,
        "features": List.from(features.map((e) => e)),
      };
}

class Display {
  late String type;
  late String size;
  late String resolution;

  Display(this.type, this.size, this.resolution);

  Display.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    size = json["size"];
    resolution = json["resolution"];
  }

  Map<String, dynamic> toJson() => {
        "type": type,
        "size": size,
        "resolution": resolution,
      };
}

class Processor {
  late String manufacturer;
  late String model;
  late int cores;
  late String clock_speed;

  Processor(this.manufacturer, this.model, this.cores, this.clock_speed);

  Processor.fromJson(Map<String, dynamic> json) {
    manufacturer = json["manufacturer"];
    model = json["model"];
    cores = json["cores"];
    clock_speed = json["clock_speed"];
  }

  Map<String, dynamic> toJson() => {
        "manufacturer": manufacturer,
        "model": model,
        "cores": cores,
        "clock_speed": clock_speed,
      };
}

class Memory {
  late String RAM;
  late String storage;
  late bool expandable_storage;
  late String max_expandable;

  Memory(this.RAM, this.storage, this.expandable_storage, this.max_expandable);

  Memory.fromJson(Map<String, dynamic> json) {
    RAM = json["RAM"];
    storage = json["storage"];
    expandable_storage = json["expandable_storage"];
    max_expandable = json["max_expandable"];
  }

  Map<String, dynamic> toJson() => {
        "RAM": RAM,
        "storage": storage,
        "expandable_storage": expandable_storage,
        "max_expandable": max_expandable
      };
}

class Camera {
  late Main main;
  late Front front;

  Camera(this.main, this.front);

  Camera.fromJson(Map<String, dynamic> json) {
    main = Main.fromJson(json["main"]);
    front = Front.fromJson(json["front"]);
  }

  Map<String, dynamic> toJson() =>
      {"main": main.toJson(), "front": front.toJson()};
}

class Main {
  late String resolution;
  late String video_capability;

  Main(this.resolution, this.video_capability);

  Main.fromJson(Map<String, dynamic> json) {
    resolution = json["resolution"];
    video_capability = json["video_capability"];
  }

  Map<String, dynamic> toJson() => {
        "resolution": resolution,
        "video_capability": video_capability,
      };
}

class Front {
  late String resolution;
  late String video_capability;

  Front(this.resolution, this.video_capability);

  Front.fromJson(Map<String, dynamic> json) {
    resolution = json["resolution"];
    video_capability = json["video_capability"];
  }

  Map<String, dynamic> toJson() => {
        "resolution": resolution,
        "video_capability": video_capability,
      };
}

class Battery {
  late String capacity;
  late String type;
  late bool removable;

  Battery(this.capacity, this.type, this.removable);

  Battery.fromJson(Map<String, dynamic> json) {
    capacity = json["capacity"];
    type = json["type"];
    removable = json["removable"];
  }

  Map<String, dynamic> toJson() =>
      {"capacity": capacity, "type": type, "removable": removable};
}

class Connectivity {
  late String network;
  late String wifi;
  late String bluetooth;
  late List<String> ports;

  Connectivity(this.network, this.wifi, this.bluetooth, this.ports);

  Connectivity.fromJson(Map<String, dynamic> json) {
    network = json["network"];
    wifi = json["wifi"];
    bluetooth = json["bluetooth"];
    ports = List.from(json["ports"].map((e) => e));
  }

  Map<String, dynamic> toJson() => {
        "network": network,
        "wifi": wifi,
        "bluetooth": bluetooth,
        "ports": List.from(ports.map((e) => e))
      };
}
