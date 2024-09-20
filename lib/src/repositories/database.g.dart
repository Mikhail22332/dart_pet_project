// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PlanetsTable extends Planets with TableInfo<$PlanetsTable, Planet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlanetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _diameterMeta =
      const VerificationMeta('diameter');
  @override
  late final GeneratedColumn<String> diameter = GeneratedColumn<String>(
      'diameter', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _rotationPeriodMeta =
      const VerificationMeta('rotationPeriod');
  @override
  late final GeneratedColumn<String> rotationPeriod = GeneratedColumn<String>(
      'rotation_period', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _orbitalPeriodMeta =
      const VerificationMeta('orbitalPeriod');
  @override
  late final GeneratedColumn<String> orbitalPeriod = GeneratedColumn<String>(
      'orbital_period', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gravityMeta =
      const VerificationMeta('gravity');
  @override
  late final GeneratedColumn<String> gravity = GeneratedColumn<String>(
      'gravity', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _populationMeta =
      const VerificationMeta('population');
  @override
  late final GeneratedColumn<String> population = GeneratedColumn<String>(
      'population', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _climateMeta =
      const VerificationMeta('climate');
  @override
  late final GeneratedColumn<String> climate = GeneratedColumn<String>(
      'climate', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _terrainMeta =
      const VerificationMeta('terrain');
  @override
  late final GeneratedColumn<String> terrain = GeneratedColumn<String>(
      'terrain', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _surfaceWaterMeta =
      const VerificationMeta('surfaceWater');
  @override
  late final GeneratedColumn<String> surfaceWater = GeneratedColumn<String>(
      'surface_water', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        diameter,
        rotationPeriod,
        orbitalPeriod,
        gravity,
        population,
        climate,
        terrain,
        surfaceWater
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'planets';
  @override
  VerificationContext validateIntegrity(Insertable<Planet> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('diameter')) {
      context.handle(_diameterMeta,
          diameter.isAcceptableOrUnknown(data['diameter']!, _diameterMeta));
    }
    if (data.containsKey('rotation_period')) {
      context.handle(
          _rotationPeriodMeta,
          rotationPeriod.isAcceptableOrUnknown(
              data['rotation_period']!, _rotationPeriodMeta));
    }
    if (data.containsKey('orbital_period')) {
      context.handle(
          _orbitalPeriodMeta,
          orbitalPeriod.isAcceptableOrUnknown(
              data['orbital_period']!, _orbitalPeriodMeta));
    }
    if (data.containsKey('gravity')) {
      context.handle(_gravityMeta,
          gravity.isAcceptableOrUnknown(data['gravity']!, _gravityMeta));
    }
    if (data.containsKey('population')) {
      context.handle(
          _populationMeta,
          population.isAcceptableOrUnknown(
              data['population']!, _populationMeta));
    }
    if (data.containsKey('climate')) {
      context.handle(_climateMeta,
          climate.isAcceptableOrUnknown(data['climate']!, _climateMeta));
    }
    if (data.containsKey('terrain')) {
      context.handle(_terrainMeta,
          terrain.isAcceptableOrUnknown(data['terrain']!, _terrainMeta));
    }
    if (data.containsKey('surface_water')) {
      context.handle(
          _surfaceWaterMeta,
          surfaceWater.isAcceptableOrUnknown(
              data['surface_water']!, _surfaceWaterMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Planet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Planet(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      diameter: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}diameter']),
      rotationPeriod: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rotation_period']),
      orbitalPeriod: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}orbital_period']),
      gravity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gravity']),
      population: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}population']),
      climate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}climate']),
      terrain: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}terrain']),
      surfaceWater: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}surface_water']),
    );
  }

  @override
  $PlanetsTable createAlias(String alias) {
    return $PlanetsTable(attachedDatabase, alias);
  }
}

class Planet extends DataClass implements Insertable<Planet> {
  final int id;
  final String? name;
  final String? diameter;
  final String? rotationPeriod;
  final String? orbitalPeriod;
  final String? gravity;
  final String? population;
  final String? climate;
  final String? terrain;
  final String? surfaceWater;
  const Planet(
      {required this.id,
      this.name,
      this.diameter,
      this.rotationPeriod,
      this.orbitalPeriod,
      this.gravity,
      this.population,
      this.climate,
      this.terrain,
      this.surfaceWater});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || diameter != null) {
      map['diameter'] = Variable<String>(diameter);
    }
    if (!nullToAbsent || rotationPeriod != null) {
      map['rotation_period'] = Variable<String>(rotationPeriod);
    }
    if (!nullToAbsent || orbitalPeriod != null) {
      map['orbital_period'] = Variable<String>(orbitalPeriod);
    }
    if (!nullToAbsent || gravity != null) {
      map['gravity'] = Variable<String>(gravity);
    }
    if (!nullToAbsent || population != null) {
      map['population'] = Variable<String>(population);
    }
    if (!nullToAbsent || climate != null) {
      map['climate'] = Variable<String>(climate);
    }
    if (!nullToAbsent || terrain != null) {
      map['terrain'] = Variable<String>(terrain);
    }
    if (!nullToAbsent || surfaceWater != null) {
      map['surface_water'] = Variable<String>(surfaceWater);
    }
    return map;
  }

  PlanetsCompanion toCompanion(bool nullToAbsent) {
    return PlanetsCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      diameter: diameter == null && nullToAbsent
          ? const Value.absent()
          : Value(diameter),
      rotationPeriod: rotationPeriod == null && nullToAbsent
          ? const Value.absent()
          : Value(rotationPeriod),
      orbitalPeriod: orbitalPeriod == null && nullToAbsent
          ? const Value.absent()
          : Value(orbitalPeriod),
      gravity: gravity == null && nullToAbsent
          ? const Value.absent()
          : Value(gravity),
      population: population == null && nullToAbsent
          ? const Value.absent()
          : Value(population),
      climate: climate == null && nullToAbsent
          ? const Value.absent()
          : Value(climate),
      terrain: terrain == null && nullToAbsent
          ? const Value.absent()
          : Value(terrain),
      surfaceWater: surfaceWater == null && nullToAbsent
          ? const Value.absent()
          : Value(surfaceWater),
    );
  }

  factory Planet.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Planet(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      diameter: serializer.fromJson<String?>(json['diameter']),
      rotationPeriod: serializer.fromJson<String?>(json['rotationPeriod']),
      orbitalPeriod: serializer.fromJson<String?>(json['orbitalPeriod']),
      gravity: serializer.fromJson<String?>(json['gravity']),
      population: serializer.fromJson<String?>(json['population']),
      climate: serializer.fromJson<String?>(json['climate']),
      terrain: serializer.fromJson<String?>(json['terrain']),
      surfaceWater: serializer.fromJson<String?>(json['surfaceWater']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'diameter': serializer.toJson<String?>(diameter),
      'rotationPeriod': serializer.toJson<String?>(rotationPeriod),
      'orbitalPeriod': serializer.toJson<String?>(orbitalPeriod),
      'gravity': serializer.toJson<String?>(gravity),
      'population': serializer.toJson<String?>(population),
      'climate': serializer.toJson<String?>(climate),
      'terrain': serializer.toJson<String?>(terrain),
      'surfaceWater': serializer.toJson<String?>(surfaceWater),
    };
  }

  Planet copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> diameter = const Value.absent(),
          Value<String?> rotationPeriod = const Value.absent(),
          Value<String?> orbitalPeriod = const Value.absent(),
          Value<String?> gravity = const Value.absent(),
          Value<String?> population = const Value.absent(),
          Value<String?> climate = const Value.absent(),
          Value<String?> terrain = const Value.absent(),
          Value<String?> surfaceWater = const Value.absent()}) =>
      Planet(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        diameter: diameter.present ? diameter.value : this.diameter,
        rotationPeriod:
            rotationPeriod.present ? rotationPeriod.value : this.rotationPeriod,
        orbitalPeriod:
            orbitalPeriod.present ? orbitalPeriod.value : this.orbitalPeriod,
        gravity: gravity.present ? gravity.value : this.gravity,
        population: population.present ? population.value : this.population,
        climate: climate.present ? climate.value : this.climate,
        terrain: terrain.present ? terrain.value : this.terrain,
        surfaceWater:
            surfaceWater.present ? surfaceWater.value : this.surfaceWater,
      );
  Planet copyWithCompanion(PlanetsCompanion data) {
    return Planet(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      diameter: data.diameter.present ? data.diameter.value : this.diameter,
      rotationPeriod: data.rotationPeriod.present
          ? data.rotationPeriod.value
          : this.rotationPeriod,
      orbitalPeriod: data.orbitalPeriod.present
          ? data.orbitalPeriod.value
          : this.orbitalPeriod,
      gravity: data.gravity.present ? data.gravity.value : this.gravity,
      population:
          data.population.present ? data.population.value : this.population,
      climate: data.climate.present ? data.climate.value : this.climate,
      terrain: data.terrain.present ? data.terrain.value : this.terrain,
      surfaceWater: data.surfaceWater.present
          ? data.surfaceWater.value
          : this.surfaceWater,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Planet(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('diameter: $diameter, ')
          ..write('rotationPeriod: $rotationPeriod, ')
          ..write('orbitalPeriod: $orbitalPeriod, ')
          ..write('gravity: $gravity, ')
          ..write('population: $population, ')
          ..write('climate: $climate, ')
          ..write('terrain: $terrain, ')
          ..write('surfaceWater: $surfaceWater')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, diameter, rotationPeriod,
      orbitalPeriod, gravity, population, climate, terrain, surfaceWater);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Planet &&
          other.id == this.id &&
          other.name == this.name &&
          other.diameter == this.diameter &&
          other.rotationPeriod == this.rotationPeriod &&
          other.orbitalPeriod == this.orbitalPeriod &&
          other.gravity == this.gravity &&
          other.population == this.population &&
          other.climate == this.climate &&
          other.terrain == this.terrain &&
          other.surfaceWater == this.surfaceWater);
}

class PlanetsCompanion extends UpdateCompanion<Planet> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> diameter;
  final Value<String?> rotationPeriod;
  final Value<String?> orbitalPeriod;
  final Value<String?> gravity;
  final Value<String?> population;
  final Value<String?> climate;
  final Value<String?> terrain;
  final Value<String?> surfaceWater;
  const PlanetsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.diameter = const Value.absent(),
    this.rotationPeriod = const Value.absent(),
    this.orbitalPeriod = const Value.absent(),
    this.gravity = const Value.absent(),
    this.population = const Value.absent(),
    this.climate = const Value.absent(),
    this.terrain = const Value.absent(),
    this.surfaceWater = const Value.absent(),
  });
  PlanetsCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.diameter = const Value.absent(),
    this.rotationPeriod = const Value.absent(),
    this.orbitalPeriod = const Value.absent(),
    this.gravity = const Value.absent(),
    this.population = const Value.absent(),
    this.climate = const Value.absent(),
    this.terrain = const Value.absent(),
    this.surfaceWater = const Value.absent(),
  });
  static Insertable<Planet> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? diameter,
    Expression<String>? rotationPeriod,
    Expression<String>? orbitalPeriod,
    Expression<String>? gravity,
    Expression<String>? population,
    Expression<String>? climate,
    Expression<String>? terrain,
    Expression<String>? surfaceWater,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (diameter != null) 'diameter': diameter,
      if (rotationPeriod != null) 'rotation_period': rotationPeriod,
      if (orbitalPeriod != null) 'orbital_period': orbitalPeriod,
      if (gravity != null) 'gravity': gravity,
      if (population != null) 'population': population,
      if (climate != null) 'climate': climate,
      if (terrain != null) 'terrain': terrain,
      if (surfaceWater != null) 'surface_water': surfaceWater,
    });
  }

  PlanetsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? diameter,
      Value<String?>? rotationPeriod,
      Value<String?>? orbitalPeriod,
      Value<String?>? gravity,
      Value<String?>? population,
      Value<String?>? climate,
      Value<String?>? terrain,
      Value<String?>? surfaceWater}) {
    return PlanetsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      diameter: diameter ?? this.diameter,
      rotationPeriod: rotationPeriod ?? this.rotationPeriod,
      orbitalPeriod: orbitalPeriod ?? this.orbitalPeriod,
      gravity: gravity ?? this.gravity,
      population: population ?? this.population,
      climate: climate ?? this.climate,
      terrain: terrain ?? this.terrain,
      surfaceWater: surfaceWater ?? this.surfaceWater,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (diameter.present) {
      map['diameter'] = Variable<String>(diameter.value);
    }
    if (rotationPeriod.present) {
      map['rotation_period'] = Variable<String>(rotationPeriod.value);
    }
    if (orbitalPeriod.present) {
      map['orbital_period'] = Variable<String>(orbitalPeriod.value);
    }
    if (gravity.present) {
      map['gravity'] = Variable<String>(gravity.value);
    }
    if (population.present) {
      map['population'] = Variable<String>(population.value);
    }
    if (climate.present) {
      map['climate'] = Variable<String>(climate.value);
    }
    if (terrain.present) {
      map['terrain'] = Variable<String>(terrain.value);
    }
    if (surfaceWater.present) {
      map['surface_water'] = Variable<String>(surfaceWater.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlanetsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('diameter: $diameter, ')
          ..write('rotationPeriod: $rotationPeriod, ')
          ..write('orbitalPeriod: $orbitalPeriod, ')
          ..write('gravity: $gravity, ')
          ..write('population: $population, ')
          ..write('climate: $climate, ')
          ..write('terrain: $terrain, ')
          ..write('surfaceWater: $surfaceWater')
          ..write(')'))
        .toString();
  }
}

class $SpeciesTable extends Species with TableInfo<$SpeciesTable, Specy> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpeciesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _classificationMeta =
      const VerificationMeta('classification');
  @override
  late final GeneratedColumn<String> classification = GeneratedColumn<String>(
      'classification', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _designationMeta =
      const VerificationMeta('designation');
  @override
  late final GeneratedColumn<String> designation = GeneratedColumn<String>(
      'designation', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _averageHeightMeta =
      const VerificationMeta('averageHeight');
  @override
  late final GeneratedColumn<String> averageHeight = GeneratedColumn<String>(
      'average_height', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _averageLifespanMeta =
      const VerificationMeta('averageLifespan');
  @override
  late final GeneratedColumn<String> averageLifespan = GeneratedColumn<String>(
      'average_lifespan', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _eyeColorsMeta =
      const VerificationMeta('eyeColors');
  @override
  late final GeneratedColumn<String> eyeColors = GeneratedColumn<String>(
      'eye_colors', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hairColorsMeta =
      const VerificationMeta('hairColors');
  @override
  late final GeneratedColumn<String> hairColors = GeneratedColumn<String>(
      'hair_colors', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _skinColorsMeta =
      const VerificationMeta('skinColors');
  @override
  late final GeneratedColumn<String> skinColors = GeneratedColumn<String>(
      'skin_colors', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _homeworldIdMeta =
      const VerificationMeta('homeworldId');
  @override
  late final GeneratedColumn<int> homeworldId = GeneratedColumn<int>(
      'homeworld_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES planets (id)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        classification,
        designation,
        averageHeight,
        averageLifespan,
        eyeColors,
        hairColors,
        skinColors,
        language,
        homeworldId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'species';
  @override
  VerificationContext validateIntegrity(Insertable<Specy> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('classification')) {
      context.handle(
          _classificationMeta,
          classification.isAcceptableOrUnknown(
              data['classification']!, _classificationMeta));
    }
    if (data.containsKey('designation')) {
      context.handle(
          _designationMeta,
          designation.isAcceptableOrUnknown(
              data['designation']!, _designationMeta));
    }
    if (data.containsKey('average_height')) {
      context.handle(
          _averageHeightMeta,
          averageHeight.isAcceptableOrUnknown(
              data['average_height']!, _averageHeightMeta));
    }
    if (data.containsKey('average_lifespan')) {
      context.handle(
          _averageLifespanMeta,
          averageLifespan.isAcceptableOrUnknown(
              data['average_lifespan']!, _averageLifespanMeta));
    }
    if (data.containsKey('eye_colors')) {
      context.handle(_eyeColorsMeta,
          eyeColors.isAcceptableOrUnknown(data['eye_colors']!, _eyeColorsMeta));
    }
    if (data.containsKey('hair_colors')) {
      context.handle(
          _hairColorsMeta,
          hairColors.isAcceptableOrUnknown(
              data['hair_colors']!, _hairColorsMeta));
    }
    if (data.containsKey('skin_colors')) {
      context.handle(
          _skinColorsMeta,
          skinColors.isAcceptableOrUnknown(
              data['skin_colors']!, _skinColorsMeta));
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    }
    if (data.containsKey('homeworld_id')) {
      context.handle(
          _homeworldIdMeta,
          homeworldId.isAcceptableOrUnknown(
              data['homeworld_id']!, _homeworldIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Specy map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Specy(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      classification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}classification']),
      designation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}designation']),
      averageHeight: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}average_height']),
      averageLifespan: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}average_lifespan']),
      eyeColors: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}eye_colors']),
      hairColors: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hair_colors']),
      skinColors: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}skin_colors']),
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language']),
      homeworldId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}homeworld_id']),
    );
  }

  @override
  $SpeciesTable createAlias(String alias) {
    return $SpeciesTable(attachedDatabase, alias);
  }
}

class Specy extends DataClass implements Insertable<Specy> {
  final int id;
  final String? name;
  final String? classification;
  final String? designation;
  final String? averageHeight;
  final String? averageLifespan;
  final String? eyeColors;
  final String? hairColors;
  final String? skinColors;
  final String? language;
  final int? homeworldId;
  const Specy(
      {required this.id,
      this.name,
      this.classification,
      this.designation,
      this.averageHeight,
      this.averageLifespan,
      this.eyeColors,
      this.hairColors,
      this.skinColors,
      this.language,
      this.homeworldId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || classification != null) {
      map['classification'] = Variable<String>(classification);
    }
    if (!nullToAbsent || designation != null) {
      map['designation'] = Variable<String>(designation);
    }
    if (!nullToAbsent || averageHeight != null) {
      map['average_height'] = Variable<String>(averageHeight);
    }
    if (!nullToAbsent || averageLifespan != null) {
      map['average_lifespan'] = Variable<String>(averageLifespan);
    }
    if (!nullToAbsent || eyeColors != null) {
      map['eye_colors'] = Variable<String>(eyeColors);
    }
    if (!nullToAbsent || hairColors != null) {
      map['hair_colors'] = Variable<String>(hairColors);
    }
    if (!nullToAbsent || skinColors != null) {
      map['skin_colors'] = Variable<String>(skinColors);
    }
    if (!nullToAbsent || language != null) {
      map['language'] = Variable<String>(language);
    }
    if (!nullToAbsent || homeworldId != null) {
      map['homeworld_id'] = Variable<int>(homeworldId);
    }
    return map;
  }

  SpeciesCompanion toCompanion(bool nullToAbsent) {
    return SpeciesCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      classification: classification == null && nullToAbsent
          ? const Value.absent()
          : Value(classification),
      designation: designation == null && nullToAbsent
          ? const Value.absent()
          : Value(designation),
      averageHeight: averageHeight == null && nullToAbsent
          ? const Value.absent()
          : Value(averageHeight),
      averageLifespan: averageLifespan == null && nullToAbsent
          ? const Value.absent()
          : Value(averageLifespan),
      eyeColors: eyeColors == null && nullToAbsent
          ? const Value.absent()
          : Value(eyeColors),
      hairColors: hairColors == null && nullToAbsent
          ? const Value.absent()
          : Value(hairColors),
      skinColors: skinColors == null && nullToAbsent
          ? const Value.absent()
          : Value(skinColors),
      language: language == null && nullToAbsent
          ? const Value.absent()
          : Value(language),
      homeworldId: homeworldId == null && nullToAbsent
          ? const Value.absent()
          : Value(homeworldId),
    );
  }

  factory Specy.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Specy(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      classification: serializer.fromJson<String?>(json['classification']),
      designation: serializer.fromJson<String?>(json['designation']),
      averageHeight: serializer.fromJson<String?>(json['averageHeight']),
      averageLifespan: serializer.fromJson<String?>(json['averageLifespan']),
      eyeColors: serializer.fromJson<String?>(json['eyeColors']),
      hairColors: serializer.fromJson<String?>(json['hairColors']),
      skinColors: serializer.fromJson<String?>(json['skinColors']),
      language: serializer.fromJson<String?>(json['language']),
      homeworldId: serializer.fromJson<int?>(json['homeworldId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'classification': serializer.toJson<String?>(classification),
      'designation': serializer.toJson<String?>(designation),
      'averageHeight': serializer.toJson<String?>(averageHeight),
      'averageLifespan': serializer.toJson<String?>(averageLifespan),
      'eyeColors': serializer.toJson<String?>(eyeColors),
      'hairColors': serializer.toJson<String?>(hairColors),
      'skinColors': serializer.toJson<String?>(skinColors),
      'language': serializer.toJson<String?>(language),
      'homeworldId': serializer.toJson<int?>(homeworldId),
    };
  }

  Specy copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> classification = const Value.absent(),
          Value<String?> designation = const Value.absent(),
          Value<String?> averageHeight = const Value.absent(),
          Value<String?> averageLifespan = const Value.absent(),
          Value<String?> eyeColors = const Value.absent(),
          Value<String?> hairColors = const Value.absent(),
          Value<String?> skinColors = const Value.absent(),
          Value<String?> language = const Value.absent(),
          Value<int?> homeworldId = const Value.absent()}) =>
      Specy(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        classification:
            classification.present ? classification.value : this.classification,
        designation: designation.present ? designation.value : this.designation,
        averageHeight:
            averageHeight.present ? averageHeight.value : this.averageHeight,
        averageLifespan: averageLifespan.present
            ? averageLifespan.value
            : this.averageLifespan,
        eyeColors: eyeColors.present ? eyeColors.value : this.eyeColors,
        hairColors: hairColors.present ? hairColors.value : this.hairColors,
        skinColors: skinColors.present ? skinColors.value : this.skinColors,
        language: language.present ? language.value : this.language,
        homeworldId: homeworldId.present ? homeworldId.value : this.homeworldId,
      );
  Specy copyWithCompanion(SpeciesCompanion data) {
    return Specy(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      classification: data.classification.present
          ? data.classification.value
          : this.classification,
      designation:
          data.designation.present ? data.designation.value : this.designation,
      averageHeight: data.averageHeight.present
          ? data.averageHeight.value
          : this.averageHeight,
      averageLifespan: data.averageLifespan.present
          ? data.averageLifespan.value
          : this.averageLifespan,
      eyeColors: data.eyeColors.present ? data.eyeColors.value : this.eyeColors,
      hairColors:
          data.hairColors.present ? data.hairColors.value : this.hairColors,
      skinColors:
          data.skinColors.present ? data.skinColors.value : this.skinColors,
      language: data.language.present ? data.language.value : this.language,
      homeworldId:
          data.homeworldId.present ? data.homeworldId.value : this.homeworldId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Specy(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('classification: $classification, ')
          ..write('designation: $designation, ')
          ..write('averageHeight: $averageHeight, ')
          ..write('averageLifespan: $averageLifespan, ')
          ..write('eyeColors: $eyeColors, ')
          ..write('hairColors: $hairColors, ')
          ..write('skinColors: $skinColors, ')
          ..write('language: $language, ')
          ..write('homeworldId: $homeworldId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      classification,
      designation,
      averageHeight,
      averageLifespan,
      eyeColors,
      hairColors,
      skinColors,
      language,
      homeworldId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Specy &&
          other.id == this.id &&
          other.name == this.name &&
          other.classification == this.classification &&
          other.designation == this.designation &&
          other.averageHeight == this.averageHeight &&
          other.averageLifespan == this.averageLifespan &&
          other.eyeColors == this.eyeColors &&
          other.hairColors == this.hairColors &&
          other.skinColors == this.skinColors &&
          other.language == this.language &&
          other.homeworldId == this.homeworldId);
}

class SpeciesCompanion extends UpdateCompanion<Specy> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> classification;
  final Value<String?> designation;
  final Value<String?> averageHeight;
  final Value<String?> averageLifespan;
  final Value<String?> eyeColors;
  final Value<String?> hairColors;
  final Value<String?> skinColors;
  final Value<String?> language;
  final Value<int?> homeworldId;
  const SpeciesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.classification = const Value.absent(),
    this.designation = const Value.absent(),
    this.averageHeight = const Value.absent(),
    this.averageLifespan = const Value.absent(),
    this.eyeColors = const Value.absent(),
    this.hairColors = const Value.absent(),
    this.skinColors = const Value.absent(),
    this.language = const Value.absent(),
    this.homeworldId = const Value.absent(),
  });
  SpeciesCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.classification = const Value.absent(),
    this.designation = const Value.absent(),
    this.averageHeight = const Value.absent(),
    this.averageLifespan = const Value.absent(),
    this.eyeColors = const Value.absent(),
    this.hairColors = const Value.absent(),
    this.skinColors = const Value.absent(),
    this.language = const Value.absent(),
    this.homeworldId = const Value.absent(),
  });
  static Insertable<Specy> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? classification,
    Expression<String>? designation,
    Expression<String>? averageHeight,
    Expression<String>? averageLifespan,
    Expression<String>? eyeColors,
    Expression<String>? hairColors,
    Expression<String>? skinColors,
    Expression<String>? language,
    Expression<int>? homeworldId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (classification != null) 'classification': classification,
      if (designation != null) 'designation': designation,
      if (averageHeight != null) 'average_height': averageHeight,
      if (averageLifespan != null) 'average_lifespan': averageLifespan,
      if (eyeColors != null) 'eye_colors': eyeColors,
      if (hairColors != null) 'hair_colors': hairColors,
      if (skinColors != null) 'skin_colors': skinColors,
      if (language != null) 'language': language,
      if (homeworldId != null) 'homeworld_id': homeworldId,
    });
  }

  SpeciesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? classification,
      Value<String?>? designation,
      Value<String?>? averageHeight,
      Value<String?>? averageLifespan,
      Value<String?>? eyeColors,
      Value<String?>? hairColors,
      Value<String?>? skinColors,
      Value<String?>? language,
      Value<int?>? homeworldId}) {
    return SpeciesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      classification: classification ?? this.classification,
      designation: designation ?? this.designation,
      averageHeight: averageHeight ?? this.averageHeight,
      averageLifespan: averageLifespan ?? this.averageLifespan,
      eyeColors: eyeColors ?? this.eyeColors,
      hairColors: hairColors ?? this.hairColors,
      skinColors: skinColors ?? this.skinColors,
      language: language ?? this.language,
      homeworldId: homeworldId ?? this.homeworldId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (classification.present) {
      map['classification'] = Variable<String>(classification.value);
    }
    if (designation.present) {
      map['designation'] = Variable<String>(designation.value);
    }
    if (averageHeight.present) {
      map['average_height'] = Variable<String>(averageHeight.value);
    }
    if (averageLifespan.present) {
      map['average_lifespan'] = Variable<String>(averageLifespan.value);
    }
    if (eyeColors.present) {
      map['eye_colors'] = Variable<String>(eyeColors.value);
    }
    if (hairColors.present) {
      map['hair_colors'] = Variable<String>(hairColors.value);
    }
    if (skinColors.present) {
      map['skin_colors'] = Variable<String>(skinColors.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (homeworldId.present) {
      map['homeworld_id'] = Variable<int>(homeworldId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpeciesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('classification: $classification, ')
          ..write('designation: $designation, ')
          ..write('averageHeight: $averageHeight, ')
          ..write('averageLifespan: $averageLifespan, ')
          ..write('eyeColors: $eyeColors, ')
          ..write('hairColors: $hairColors, ')
          ..write('skinColors: $skinColors, ')
          ..write('language: $language, ')
          ..write('homeworldId: $homeworldId')
          ..write(')'))
        .toString();
  }
}

class $PeopleTable extends People with TableInfo<$PeopleTable, PeopleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PeopleTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _birthYearMeta =
      const VerificationMeta('birthYear');
  @override
  late final GeneratedColumn<String> birthYear = GeneratedColumn<String>(
      'birth_year', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _eyeColorMeta =
      const VerificationMeta('eyeColor');
  @override
  late final GeneratedColumn<String> eyeColor = GeneratedColumn<String>(
      'eye_color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hairColorMeta =
      const VerificationMeta('hairColor');
  @override
  late final GeneratedColumn<String> hairColor = GeneratedColumn<String>(
      'hair_color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _massMeta = const VerificationMeta('mass');
  @override
  late final GeneratedColumn<int> mass = GeneratedColumn<int>(
      'mass', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _skinColorMeta =
      const VerificationMeta('skinColor');
  @override
  late final GeneratedColumn<String> skinColor = GeneratedColumn<String>(
      'skin_color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _homeWorldIdMeta =
      const VerificationMeta('homeWorldId');
  @override
  late final GeneratedColumn<int> homeWorldId = GeneratedColumn<int>(
      'home_world_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES planets (id)'));
  static const VerificationMeta _speciesIdMeta =
      const VerificationMeta('speciesId');
  @override
  late final GeneratedColumn<int> speciesId = GeneratedColumn<int>(
      'species_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES species (id)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        birthYear,
        eyeColor,
        gender,
        hairColor,
        height,
        mass,
        skinColor,
        homeWorldId,
        speciesId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'people';
  @override
  VerificationContext validateIntegrity(Insertable<PeopleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('birth_year')) {
      context.handle(_birthYearMeta,
          birthYear.isAcceptableOrUnknown(data['birth_year']!, _birthYearMeta));
    }
    if (data.containsKey('eye_color')) {
      context.handle(_eyeColorMeta,
          eyeColor.isAcceptableOrUnknown(data['eye_color']!, _eyeColorMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    }
    if (data.containsKey('hair_color')) {
      context.handle(_hairColorMeta,
          hairColor.isAcceptableOrUnknown(data['hair_color']!, _hairColorMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('mass')) {
      context.handle(
          _massMeta, mass.isAcceptableOrUnknown(data['mass']!, _massMeta));
    }
    if (data.containsKey('skin_color')) {
      context.handle(_skinColorMeta,
          skinColor.isAcceptableOrUnknown(data['skin_color']!, _skinColorMeta));
    }
    if (data.containsKey('home_world_id')) {
      context.handle(
          _homeWorldIdMeta,
          homeWorldId.isAcceptableOrUnknown(
              data['home_world_id']!, _homeWorldIdMeta));
    }
    if (data.containsKey('species_id')) {
      context.handle(_speciesIdMeta,
          speciesId.isAcceptableOrUnknown(data['species_id']!, _speciesIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PeopleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PeopleData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      birthYear: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}birth_year']),
      eyeColor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}eye_color']),
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender']),
      hairColor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hair_color']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height']),
      mass: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mass']),
      skinColor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}skin_color']),
      homeWorldId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}home_world_id']),
      speciesId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}species_id']),
    );
  }

  @override
  $PeopleTable createAlias(String alias) {
    return $PeopleTable(attachedDatabase, alias);
  }
}

class PeopleData extends DataClass implements Insertable<PeopleData> {
  final int id;
  final String? name;
  final String? birthYear;
  final String? eyeColor;
  final String? gender;
  final String? hairColor;
  final int? height;
  final int? mass;
  final String? skinColor;
  final int? homeWorldId;
  final int? speciesId;
  const PeopleData(
      {required this.id,
      this.name,
      this.birthYear,
      this.eyeColor,
      this.gender,
      this.hairColor,
      this.height,
      this.mass,
      this.skinColor,
      this.homeWorldId,
      this.speciesId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || birthYear != null) {
      map['birth_year'] = Variable<String>(birthYear);
    }
    if (!nullToAbsent || eyeColor != null) {
      map['eye_color'] = Variable<String>(eyeColor);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    if (!nullToAbsent || hairColor != null) {
      map['hair_color'] = Variable<String>(hairColor);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    if (!nullToAbsent || mass != null) {
      map['mass'] = Variable<int>(mass);
    }
    if (!nullToAbsent || skinColor != null) {
      map['skin_color'] = Variable<String>(skinColor);
    }
    if (!nullToAbsent || homeWorldId != null) {
      map['home_world_id'] = Variable<int>(homeWorldId);
    }
    if (!nullToAbsent || speciesId != null) {
      map['species_id'] = Variable<int>(speciesId);
    }
    return map;
  }

  PeopleCompanion toCompanion(bool nullToAbsent) {
    return PeopleCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      birthYear: birthYear == null && nullToAbsent
          ? const Value.absent()
          : Value(birthYear),
      eyeColor: eyeColor == null && nullToAbsent
          ? const Value.absent()
          : Value(eyeColor),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      hairColor: hairColor == null && nullToAbsent
          ? const Value.absent()
          : Value(hairColor),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      mass: mass == null && nullToAbsent ? const Value.absent() : Value(mass),
      skinColor: skinColor == null && nullToAbsent
          ? const Value.absent()
          : Value(skinColor),
      homeWorldId: homeWorldId == null && nullToAbsent
          ? const Value.absent()
          : Value(homeWorldId),
      speciesId: speciesId == null && nullToAbsent
          ? const Value.absent()
          : Value(speciesId),
    );
  }

  factory PeopleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PeopleData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      birthYear: serializer.fromJson<String?>(json['birthYear']),
      eyeColor: serializer.fromJson<String?>(json['eyeColor']),
      gender: serializer.fromJson<String?>(json['gender']),
      hairColor: serializer.fromJson<String?>(json['hairColor']),
      height: serializer.fromJson<int?>(json['height']),
      mass: serializer.fromJson<int?>(json['mass']),
      skinColor: serializer.fromJson<String?>(json['skinColor']),
      homeWorldId: serializer.fromJson<int?>(json['homeWorldId']),
      speciesId: serializer.fromJson<int?>(json['speciesId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'birthYear': serializer.toJson<String?>(birthYear),
      'eyeColor': serializer.toJson<String?>(eyeColor),
      'gender': serializer.toJson<String?>(gender),
      'hairColor': serializer.toJson<String?>(hairColor),
      'height': serializer.toJson<int?>(height),
      'mass': serializer.toJson<int?>(mass),
      'skinColor': serializer.toJson<String?>(skinColor),
      'homeWorldId': serializer.toJson<int?>(homeWorldId),
      'speciesId': serializer.toJson<int?>(speciesId),
    };
  }

  PeopleData copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> birthYear = const Value.absent(),
          Value<String?> eyeColor = const Value.absent(),
          Value<String?> gender = const Value.absent(),
          Value<String?> hairColor = const Value.absent(),
          Value<int?> height = const Value.absent(),
          Value<int?> mass = const Value.absent(),
          Value<String?> skinColor = const Value.absent(),
          Value<int?> homeWorldId = const Value.absent(),
          Value<int?> speciesId = const Value.absent()}) =>
      PeopleData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        birthYear: birthYear.present ? birthYear.value : this.birthYear,
        eyeColor: eyeColor.present ? eyeColor.value : this.eyeColor,
        gender: gender.present ? gender.value : this.gender,
        hairColor: hairColor.present ? hairColor.value : this.hairColor,
        height: height.present ? height.value : this.height,
        mass: mass.present ? mass.value : this.mass,
        skinColor: skinColor.present ? skinColor.value : this.skinColor,
        homeWorldId: homeWorldId.present ? homeWorldId.value : this.homeWorldId,
        speciesId: speciesId.present ? speciesId.value : this.speciesId,
      );
  PeopleData copyWithCompanion(PeopleCompanion data) {
    return PeopleData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      birthYear: data.birthYear.present ? data.birthYear.value : this.birthYear,
      eyeColor: data.eyeColor.present ? data.eyeColor.value : this.eyeColor,
      gender: data.gender.present ? data.gender.value : this.gender,
      hairColor: data.hairColor.present ? data.hairColor.value : this.hairColor,
      height: data.height.present ? data.height.value : this.height,
      mass: data.mass.present ? data.mass.value : this.mass,
      skinColor: data.skinColor.present ? data.skinColor.value : this.skinColor,
      homeWorldId:
          data.homeWorldId.present ? data.homeWorldId.value : this.homeWorldId,
      speciesId: data.speciesId.present ? data.speciesId.value : this.speciesId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PeopleData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthYear: $birthYear, ')
          ..write('eyeColor: $eyeColor, ')
          ..write('gender: $gender, ')
          ..write('hairColor: $hairColor, ')
          ..write('height: $height, ')
          ..write('mass: $mass, ')
          ..write('skinColor: $skinColor, ')
          ..write('homeWorldId: $homeWorldId, ')
          ..write('speciesId: $speciesId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, birthYear, eyeColor, gender,
      hairColor, height, mass, skinColor, homeWorldId, speciesId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PeopleData &&
          other.id == this.id &&
          other.name == this.name &&
          other.birthYear == this.birthYear &&
          other.eyeColor == this.eyeColor &&
          other.gender == this.gender &&
          other.hairColor == this.hairColor &&
          other.height == this.height &&
          other.mass == this.mass &&
          other.skinColor == this.skinColor &&
          other.homeWorldId == this.homeWorldId &&
          other.speciesId == this.speciesId);
}

class PeopleCompanion extends UpdateCompanion<PeopleData> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> birthYear;
  final Value<String?> eyeColor;
  final Value<String?> gender;
  final Value<String?> hairColor;
  final Value<int?> height;
  final Value<int?> mass;
  final Value<String?> skinColor;
  final Value<int?> homeWorldId;
  final Value<int?> speciesId;
  const PeopleCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.birthYear = const Value.absent(),
    this.eyeColor = const Value.absent(),
    this.gender = const Value.absent(),
    this.hairColor = const Value.absent(),
    this.height = const Value.absent(),
    this.mass = const Value.absent(),
    this.skinColor = const Value.absent(),
    this.homeWorldId = const Value.absent(),
    this.speciesId = const Value.absent(),
  });
  PeopleCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.birthYear = const Value.absent(),
    this.eyeColor = const Value.absent(),
    this.gender = const Value.absent(),
    this.hairColor = const Value.absent(),
    this.height = const Value.absent(),
    this.mass = const Value.absent(),
    this.skinColor = const Value.absent(),
    this.homeWorldId = const Value.absent(),
    this.speciesId = const Value.absent(),
  });
  static Insertable<PeopleData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? birthYear,
    Expression<String>? eyeColor,
    Expression<String>? gender,
    Expression<String>? hairColor,
    Expression<int>? height,
    Expression<int>? mass,
    Expression<String>? skinColor,
    Expression<int>? homeWorldId,
    Expression<int>? speciesId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (birthYear != null) 'birth_year': birthYear,
      if (eyeColor != null) 'eye_color': eyeColor,
      if (gender != null) 'gender': gender,
      if (hairColor != null) 'hair_color': hairColor,
      if (height != null) 'height': height,
      if (mass != null) 'mass': mass,
      if (skinColor != null) 'skin_color': skinColor,
      if (homeWorldId != null) 'home_world_id': homeWorldId,
      if (speciesId != null) 'species_id': speciesId,
    });
  }

  PeopleCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? birthYear,
      Value<String?>? eyeColor,
      Value<String?>? gender,
      Value<String?>? hairColor,
      Value<int?>? height,
      Value<int?>? mass,
      Value<String?>? skinColor,
      Value<int?>? homeWorldId,
      Value<int?>? speciesId}) {
    return PeopleCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      birthYear: birthYear ?? this.birthYear,
      eyeColor: eyeColor ?? this.eyeColor,
      gender: gender ?? this.gender,
      hairColor: hairColor ?? this.hairColor,
      height: height ?? this.height,
      mass: mass ?? this.mass,
      skinColor: skinColor ?? this.skinColor,
      homeWorldId: homeWorldId ?? this.homeWorldId,
      speciesId: speciesId ?? this.speciesId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (birthYear.present) {
      map['birth_year'] = Variable<String>(birthYear.value);
    }
    if (eyeColor.present) {
      map['eye_color'] = Variable<String>(eyeColor.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (hairColor.present) {
      map['hair_color'] = Variable<String>(hairColor.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (mass.present) {
      map['mass'] = Variable<int>(mass.value);
    }
    if (skinColor.present) {
      map['skin_color'] = Variable<String>(skinColor.value);
    }
    if (homeWorldId.present) {
      map['home_world_id'] = Variable<int>(homeWorldId.value);
    }
    if (speciesId.present) {
      map['species_id'] = Variable<int>(speciesId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PeopleCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthYear: $birthYear, ')
          ..write('eyeColor: $eyeColor, ')
          ..write('gender: $gender, ')
          ..write('hairColor: $hairColor, ')
          ..write('height: $height, ')
          ..write('mass: $mass, ')
          ..write('skinColor: $skinColor, ')
          ..write('homeWorldId: $homeWorldId, ')
          ..write('speciesId: $speciesId')
          ..write(')'))
        .toString();
  }
}

class $StarshipsTable extends Starships
    with TableInfo<$StarshipsTable, Starship> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StarshipsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _modelMeta = const VerificationMeta('model');
  @override
  late final GeneratedColumn<String> model = GeneratedColumn<String>(
      'model', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _starshipClassMeta =
      const VerificationMeta('starshipClass');
  @override
  late final GeneratedColumn<String> starshipClass = GeneratedColumn<String>(
      'starship_class', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _manufacturerMeta =
      const VerificationMeta('manufacturer');
  @override
  late final GeneratedColumn<String> manufacturer = GeneratedColumn<String>(
      'manufacturer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lengthMeta = const VerificationMeta('length');
  @override
  late final GeneratedColumn<String> length = GeneratedColumn<String>(
      'length', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _costInCreditsMeta =
      const VerificationMeta('costInCredits');
  @override
  late final GeneratedColumn<String> costInCredits = GeneratedColumn<String>(
      'cost_in_credits', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _crewMeta = const VerificationMeta('crew');
  @override
  late final GeneratedColumn<String> crew = GeneratedColumn<String>(
      'crew', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passengersMeta =
      const VerificationMeta('passengers');
  @override
  late final GeneratedColumn<String> passengers = GeneratedColumn<String>(
      'passengers', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _maxAtmospheringSpeedMeta =
      const VerificationMeta('maxAtmospheringSpeed');
  @override
  late final GeneratedColumn<String> maxAtmospheringSpeed =
      GeneratedColumn<String>('max_atmosphering_speed', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _hyperdriveRatingMeta =
      const VerificationMeta('hyperdriveRating');
  @override
  late final GeneratedColumn<String> hyperdriveRating = GeneratedColumn<String>(
      'hyperdrive_rating', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _MGLTMeta = const VerificationMeta('MGLT');
  @override
  late final GeneratedColumn<String> MGLT = GeneratedColumn<String>(
      'mglt', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cargoCapacityMeta =
      const VerificationMeta('cargoCapacity');
  @override
  late final GeneratedColumn<String> cargoCapacity = GeneratedColumn<String>(
      'cargo_capacity', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _consumablesMeta =
      const VerificationMeta('consumables');
  @override
  late final GeneratedColumn<String> consumables = GeneratedColumn<String>(
      'consumables', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        model,
        starshipClass,
        manufacturer,
        length,
        costInCredits,
        crew,
        passengers,
        maxAtmospheringSpeed,
        hyperdriveRating,
        MGLT,
        cargoCapacity,
        consumables
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'starships';
  @override
  VerificationContext validateIntegrity(Insertable<Starship> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('model')) {
      context.handle(
          _modelMeta, model.isAcceptableOrUnknown(data['model']!, _modelMeta));
    } else if (isInserting) {
      context.missing(_modelMeta);
    }
    if (data.containsKey('starship_class')) {
      context.handle(
          _starshipClassMeta,
          starshipClass.isAcceptableOrUnknown(
              data['starship_class']!, _starshipClassMeta));
    } else if (isInserting) {
      context.missing(_starshipClassMeta);
    }
    if (data.containsKey('manufacturer')) {
      context.handle(
          _manufacturerMeta,
          manufacturer.isAcceptableOrUnknown(
              data['manufacturer']!, _manufacturerMeta));
    } else if (isInserting) {
      context.missing(_manufacturerMeta);
    }
    if (data.containsKey('length')) {
      context.handle(_lengthMeta,
          length.isAcceptableOrUnknown(data['length']!, _lengthMeta));
    } else if (isInserting) {
      context.missing(_lengthMeta);
    }
    if (data.containsKey('cost_in_credits')) {
      context.handle(
          _costInCreditsMeta,
          costInCredits.isAcceptableOrUnknown(
              data['cost_in_credits']!, _costInCreditsMeta));
    } else if (isInserting) {
      context.missing(_costInCreditsMeta);
    }
    if (data.containsKey('crew')) {
      context.handle(
          _crewMeta, crew.isAcceptableOrUnknown(data['crew']!, _crewMeta));
    } else if (isInserting) {
      context.missing(_crewMeta);
    }
    if (data.containsKey('passengers')) {
      context.handle(
          _passengersMeta,
          passengers.isAcceptableOrUnknown(
              data['passengers']!, _passengersMeta));
    } else if (isInserting) {
      context.missing(_passengersMeta);
    }
    if (data.containsKey('max_atmosphering_speed')) {
      context.handle(
          _maxAtmospheringSpeedMeta,
          maxAtmospheringSpeed.isAcceptableOrUnknown(
              data['max_atmosphering_speed']!, _maxAtmospheringSpeedMeta));
    } else if (isInserting) {
      context.missing(_maxAtmospheringSpeedMeta);
    }
    if (data.containsKey('hyperdrive_rating')) {
      context.handle(
          _hyperdriveRatingMeta,
          hyperdriveRating.isAcceptableOrUnknown(
              data['hyperdrive_rating']!, _hyperdriveRatingMeta));
    } else if (isInserting) {
      context.missing(_hyperdriveRatingMeta);
    }
    if (data.containsKey('mglt')) {
      context.handle(
          _MGLTMeta, MGLT.isAcceptableOrUnknown(data['mglt']!, _MGLTMeta));
    } else if (isInserting) {
      context.missing(_MGLTMeta);
    }
    if (data.containsKey('cargo_capacity')) {
      context.handle(
          _cargoCapacityMeta,
          cargoCapacity.isAcceptableOrUnknown(
              data['cargo_capacity']!, _cargoCapacityMeta));
    } else if (isInserting) {
      context.missing(_cargoCapacityMeta);
    }
    if (data.containsKey('consumables')) {
      context.handle(
          _consumablesMeta,
          consumables.isAcceptableOrUnknown(
              data['consumables']!, _consumablesMeta));
    } else if (isInserting) {
      context.missing(_consumablesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Starship map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Starship(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      model: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}model'])!,
      starshipClass: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}starship_class'])!,
      manufacturer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}manufacturer'])!,
      length: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}length'])!,
      costInCredits: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}cost_in_credits'])!,
      crew: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}crew'])!,
      passengers: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}passengers'])!,
      maxAtmospheringSpeed: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}max_atmosphering_speed'])!,
      hyperdriveRating: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}hyperdrive_rating'])!,
      MGLT: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mglt'])!,
      cargoCapacity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cargo_capacity'])!,
      consumables: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}consumables'])!,
    );
  }

  @override
  $StarshipsTable createAlias(String alias) {
    return $StarshipsTable(attachedDatabase, alias);
  }
}

class Starship extends DataClass implements Insertable<Starship> {
  final int id;
  final String name;
  final String model;
  final String starshipClass;
  final String manufacturer;
  final String length;
  final String costInCredits;
  final String crew;
  final String passengers;
  final String maxAtmospheringSpeed;
  final String hyperdriveRating;
  final String MGLT;
  final String cargoCapacity;
  final String consumables;
  const Starship(
      {required this.id,
      required this.name,
      required this.model,
      required this.starshipClass,
      required this.manufacturer,
      required this.length,
      required this.costInCredits,
      required this.crew,
      required this.passengers,
      required this.maxAtmospheringSpeed,
      required this.hyperdriveRating,
      required this.MGLT,
      required this.cargoCapacity,
      required this.consumables});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['model'] = Variable<String>(model);
    map['starship_class'] = Variable<String>(starshipClass);
    map['manufacturer'] = Variable<String>(manufacturer);
    map['length'] = Variable<String>(length);
    map['cost_in_credits'] = Variable<String>(costInCredits);
    map['crew'] = Variable<String>(crew);
    map['passengers'] = Variable<String>(passengers);
    map['max_atmosphering_speed'] = Variable<String>(maxAtmospheringSpeed);
    map['hyperdrive_rating'] = Variable<String>(hyperdriveRating);
    map['mglt'] = Variable<String>(MGLT);
    map['cargo_capacity'] = Variable<String>(cargoCapacity);
    map['consumables'] = Variable<String>(consumables);
    return map;
  }

  StarshipsCompanion toCompanion(bool nullToAbsent) {
    return StarshipsCompanion(
      id: Value(id),
      name: Value(name),
      model: Value(model),
      starshipClass: Value(starshipClass),
      manufacturer: Value(manufacturer),
      length: Value(length),
      costInCredits: Value(costInCredits),
      crew: Value(crew),
      passengers: Value(passengers),
      maxAtmospheringSpeed: Value(maxAtmospheringSpeed),
      hyperdriveRating: Value(hyperdriveRating),
      MGLT: Value(MGLT),
      cargoCapacity: Value(cargoCapacity),
      consumables: Value(consumables),
    );
  }

  factory Starship.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Starship(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      model: serializer.fromJson<String>(json['model']),
      starshipClass: serializer.fromJson<String>(json['starshipClass']),
      manufacturer: serializer.fromJson<String>(json['manufacturer']),
      length: serializer.fromJson<String>(json['length']),
      costInCredits: serializer.fromJson<String>(json['costInCredits']),
      crew: serializer.fromJson<String>(json['crew']),
      passengers: serializer.fromJson<String>(json['passengers']),
      maxAtmospheringSpeed:
          serializer.fromJson<String>(json['maxAtmospheringSpeed']),
      hyperdriveRating: serializer.fromJson<String>(json['hyperdriveRating']),
      MGLT: serializer.fromJson<String>(json['MGLT']),
      cargoCapacity: serializer.fromJson<String>(json['cargoCapacity']),
      consumables: serializer.fromJson<String>(json['consumables']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'model': serializer.toJson<String>(model),
      'starshipClass': serializer.toJson<String>(starshipClass),
      'manufacturer': serializer.toJson<String>(manufacturer),
      'length': serializer.toJson<String>(length),
      'costInCredits': serializer.toJson<String>(costInCredits),
      'crew': serializer.toJson<String>(crew),
      'passengers': serializer.toJson<String>(passengers),
      'maxAtmospheringSpeed': serializer.toJson<String>(maxAtmospheringSpeed),
      'hyperdriveRating': serializer.toJson<String>(hyperdriveRating),
      'MGLT': serializer.toJson<String>(MGLT),
      'cargoCapacity': serializer.toJson<String>(cargoCapacity),
      'consumables': serializer.toJson<String>(consumables),
    };
  }

  Starship copyWith(
          {int? id,
          String? name,
          String? model,
          String? starshipClass,
          String? manufacturer,
          String? length,
          String? costInCredits,
          String? crew,
          String? passengers,
          String? maxAtmospheringSpeed,
          String? hyperdriveRating,
          String? MGLT,
          String? cargoCapacity,
          String? consumables}) =>
      Starship(
        id: id ?? this.id,
        name: name ?? this.name,
        model: model ?? this.model,
        starshipClass: starshipClass ?? this.starshipClass,
        manufacturer: manufacturer ?? this.manufacturer,
        length: length ?? this.length,
        costInCredits: costInCredits ?? this.costInCredits,
        crew: crew ?? this.crew,
        passengers: passengers ?? this.passengers,
        maxAtmospheringSpeed: maxAtmospheringSpeed ?? this.maxAtmospheringSpeed,
        hyperdriveRating: hyperdriveRating ?? this.hyperdriveRating,
        MGLT: MGLT ?? this.MGLT,
        cargoCapacity: cargoCapacity ?? this.cargoCapacity,
        consumables: consumables ?? this.consumables,
      );
  Starship copyWithCompanion(StarshipsCompanion data) {
    return Starship(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      model: data.model.present ? data.model.value : this.model,
      starshipClass: data.starshipClass.present
          ? data.starshipClass.value
          : this.starshipClass,
      manufacturer: data.manufacturer.present
          ? data.manufacturer.value
          : this.manufacturer,
      length: data.length.present ? data.length.value : this.length,
      costInCredits: data.costInCredits.present
          ? data.costInCredits.value
          : this.costInCredits,
      crew: data.crew.present ? data.crew.value : this.crew,
      passengers:
          data.passengers.present ? data.passengers.value : this.passengers,
      maxAtmospheringSpeed: data.maxAtmospheringSpeed.present
          ? data.maxAtmospheringSpeed.value
          : this.maxAtmospheringSpeed,
      hyperdriveRating: data.hyperdriveRating.present
          ? data.hyperdriveRating.value
          : this.hyperdriveRating,
      MGLT: data.MGLT.present ? data.MGLT.value : this.MGLT,
      cargoCapacity: data.cargoCapacity.present
          ? data.cargoCapacity.value
          : this.cargoCapacity,
      consumables:
          data.consumables.present ? data.consumables.value : this.consumables,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Starship(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('model: $model, ')
          ..write('starshipClass: $starshipClass, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('length: $length, ')
          ..write('costInCredits: $costInCredits, ')
          ..write('crew: $crew, ')
          ..write('passengers: $passengers, ')
          ..write('maxAtmospheringSpeed: $maxAtmospheringSpeed, ')
          ..write('hyperdriveRating: $hyperdriveRating, ')
          ..write('MGLT: $MGLT, ')
          ..write('cargoCapacity: $cargoCapacity, ')
          ..write('consumables: $consumables')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      model,
      starshipClass,
      manufacturer,
      length,
      costInCredits,
      crew,
      passengers,
      maxAtmospheringSpeed,
      hyperdriveRating,
      MGLT,
      cargoCapacity,
      consumables);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Starship &&
          other.id == this.id &&
          other.name == this.name &&
          other.model == this.model &&
          other.starshipClass == this.starshipClass &&
          other.manufacturer == this.manufacturer &&
          other.length == this.length &&
          other.costInCredits == this.costInCredits &&
          other.crew == this.crew &&
          other.passengers == this.passengers &&
          other.maxAtmospheringSpeed == this.maxAtmospheringSpeed &&
          other.hyperdriveRating == this.hyperdriveRating &&
          other.MGLT == this.MGLT &&
          other.cargoCapacity == this.cargoCapacity &&
          other.consumables == this.consumables);
}

class StarshipsCompanion extends UpdateCompanion<Starship> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> model;
  final Value<String> starshipClass;
  final Value<String> manufacturer;
  final Value<String> length;
  final Value<String> costInCredits;
  final Value<String> crew;
  final Value<String> passengers;
  final Value<String> maxAtmospheringSpeed;
  final Value<String> hyperdriveRating;
  final Value<String> MGLT;
  final Value<String> cargoCapacity;
  final Value<String> consumables;
  const StarshipsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.model = const Value.absent(),
    this.starshipClass = const Value.absent(),
    this.manufacturer = const Value.absent(),
    this.length = const Value.absent(),
    this.costInCredits = const Value.absent(),
    this.crew = const Value.absent(),
    this.passengers = const Value.absent(),
    this.maxAtmospheringSpeed = const Value.absent(),
    this.hyperdriveRating = const Value.absent(),
    this.MGLT = const Value.absent(),
    this.cargoCapacity = const Value.absent(),
    this.consumables = const Value.absent(),
  });
  StarshipsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String model,
    required String starshipClass,
    required String manufacturer,
    required String length,
    required String costInCredits,
    required String crew,
    required String passengers,
    required String maxAtmospheringSpeed,
    required String hyperdriveRating,
    required String MGLT,
    required String cargoCapacity,
    required String consumables,
  })  : name = Value(name),
        model = Value(model),
        starshipClass = Value(starshipClass),
        manufacturer = Value(manufacturer),
        length = Value(length),
        costInCredits = Value(costInCredits),
        crew = Value(crew),
        passengers = Value(passengers),
        maxAtmospheringSpeed = Value(maxAtmospheringSpeed),
        hyperdriveRating = Value(hyperdriveRating),
        MGLT = Value(MGLT),
        cargoCapacity = Value(cargoCapacity),
        consumables = Value(consumables);
  static Insertable<Starship> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? model,
    Expression<String>? starshipClass,
    Expression<String>? manufacturer,
    Expression<String>? length,
    Expression<String>? costInCredits,
    Expression<String>? crew,
    Expression<String>? passengers,
    Expression<String>? maxAtmospheringSpeed,
    Expression<String>? hyperdriveRating,
    Expression<String>? MGLT,
    Expression<String>? cargoCapacity,
    Expression<String>? consumables,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (model != null) 'model': model,
      if (starshipClass != null) 'starship_class': starshipClass,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (length != null) 'length': length,
      if (costInCredits != null) 'cost_in_credits': costInCredits,
      if (crew != null) 'crew': crew,
      if (passengers != null) 'passengers': passengers,
      if (maxAtmospheringSpeed != null)
        'max_atmosphering_speed': maxAtmospheringSpeed,
      if (hyperdriveRating != null) 'hyperdrive_rating': hyperdriveRating,
      if (MGLT != null) 'mglt': MGLT,
      if (cargoCapacity != null) 'cargo_capacity': cargoCapacity,
      if (consumables != null) 'consumables': consumables,
    });
  }

  StarshipsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? model,
      Value<String>? starshipClass,
      Value<String>? manufacturer,
      Value<String>? length,
      Value<String>? costInCredits,
      Value<String>? crew,
      Value<String>? passengers,
      Value<String>? maxAtmospheringSpeed,
      Value<String>? hyperdriveRating,
      Value<String>? MGLT,
      Value<String>? cargoCapacity,
      Value<String>? consumables}) {
    return StarshipsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      model: model ?? this.model,
      starshipClass: starshipClass ?? this.starshipClass,
      manufacturer: manufacturer ?? this.manufacturer,
      length: length ?? this.length,
      costInCredits: costInCredits ?? this.costInCredits,
      crew: crew ?? this.crew,
      passengers: passengers ?? this.passengers,
      maxAtmospheringSpeed: maxAtmospheringSpeed ?? this.maxAtmospheringSpeed,
      hyperdriveRating: hyperdriveRating ?? this.hyperdriveRating,
      MGLT: MGLT ?? this.MGLT,
      cargoCapacity: cargoCapacity ?? this.cargoCapacity,
      consumables: consumables ?? this.consumables,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (starshipClass.present) {
      map['starship_class'] = Variable<String>(starshipClass.value);
    }
    if (manufacturer.present) {
      map['manufacturer'] = Variable<String>(manufacturer.value);
    }
    if (length.present) {
      map['length'] = Variable<String>(length.value);
    }
    if (costInCredits.present) {
      map['cost_in_credits'] = Variable<String>(costInCredits.value);
    }
    if (crew.present) {
      map['crew'] = Variable<String>(crew.value);
    }
    if (passengers.present) {
      map['passengers'] = Variable<String>(passengers.value);
    }
    if (maxAtmospheringSpeed.present) {
      map['max_atmosphering_speed'] =
          Variable<String>(maxAtmospheringSpeed.value);
    }
    if (hyperdriveRating.present) {
      map['hyperdrive_rating'] = Variable<String>(hyperdriveRating.value);
    }
    if (MGLT.present) {
      map['mglt'] = Variable<String>(MGLT.value);
    }
    if (cargoCapacity.present) {
      map['cargo_capacity'] = Variable<String>(cargoCapacity.value);
    }
    if (consumables.present) {
      map['consumables'] = Variable<String>(consumables.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StarshipsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('model: $model, ')
          ..write('starshipClass: $starshipClass, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('length: $length, ')
          ..write('costInCredits: $costInCredits, ')
          ..write('crew: $crew, ')
          ..write('passengers: $passengers, ')
          ..write('maxAtmospheringSpeed: $maxAtmospheringSpeed, ')
          ..write('hyperdriveRating: $hyperdriveRating, ')
          ..write('MGLT: $MGLT, ')
          ..write('cargoCapacity: $cargoCapacity, ')
          ..write('consumables: $consumables')
          ..write(')'))
        .toString();
  }
}

class $VehiclesTable extends Vehicles with TableInfo<$VehiclesTable, Vehicle> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VehiclesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _modelMeta = const VerificationMeta('model');
  @override
  late final GeneratedColumn<String> model = GeneratedColumn<String>(
      'model', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _vehicleClassMeta =
      const VerificationMeta('vehicleClass');
  @override
  late final GeneratedColumn<String> vehicleClass = GeneratedColumn<String>(
      'vehicle_class', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _manufacturerMeta =
      const VerificationMeta('manufacturer');
  @override
  late final GeneratedColumn<String> manufacturer = GeneratedColumn<String>(
      'manufacturer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lengthMeta = const VerificationMeta('length');
  @override
  late final GeneratedColumn<String> length = GeneratedColumn<String>(
      'length', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _costInCreditsMeta =
      const VerificationMeta('costInCredits');
  @override
  late final GeneratedColumn<String> costInCredits = GeneratedColumn<String>(
      'cost_in_credits', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _crewMeta = const VerificationMeta('crew');
  @override
  late final GeneratedColumn<String> crew = GeneratedColumn<String>(
      'crew', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passengersMeta =
      const VerificationMeta('passengers');
  @override
  late final GeneratedColumn<String> passengers = GeneratedColumn<String>(
      'passengers', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _maxAtmospheringSpeedMeta =
      const VerificationMeta('maxAtmospheringSpeed');
  @override
  late final GeneratedColumn<String> maxAtmospheringSpeed =
      GeneratedColumn<String>('max_atmosphering_speed', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cargoCapacityMeta =
      const VerificationMeta('cargoCapacity');
  @override
  late final GeneratedColumn<String> cargoCapacity = GeneratedColumn<String>(
      'cargo_capacity', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _consumablesMeta =
      const VerificationMeta('consumables');
  @override
  late final GeneratedColumn<String> consumables = GeneratedColumn<String>(
      'consumables', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        model,
        vehicleClass,
        manufacturer,
        length,
        costInCredits,
        crew,
        passengers,
        maxAtmospheringSpeed,
        cargoCapacity,
        consumables
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vehicles';
  @override
  VerificationContext validateIntegrity(Insertable<Vehicle> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('model')) {
      context.handle(
          _modelMeta, model.isAcceptableOrUnknown(data['model']!, _modelMeta));
    } else if (isInserting) {
      context.missing(_modelMeta);
    }
    if (data.containsKey('vehicle_class')) {
      context.handle(
          _vehicleClassMeta,
          vehicleClass.isAcceptableOrUnknown(
              data['vehicle_class']!, _vehicleClassMeta));
    } else if (isInserting) {
      context.missing(_vehicleClassMeta);
    }
    if (data.containsKey('manufacturer')) {
      context.handle(
          _manufacturerMeta,
          manufacturer.isAcceptableOrUnknown(
              data['manufacturer']!, _manufacturerMeta));
    } else if (isInserting) {
      context.missing(_manufacturerMeta);
    }
    if (data.containsKey('length')) {
      context.handle(_lengthMeta,
          length.isAcceptableOrUnknown(data['length']!, _lengthMeta));
    } else if (isInserting) {
      context.missing(_lengthMeta);
    }
    if (data.containsKey('cost_in_credits')) {
      context.handle(
          _costInCreditsMeta,
          costInCredits.isAcceptableOrUnknown(
              data['cost_in_credits']!, _costInCreditsMeta));
    } else if (isInserting) {
      context.missing(_costInCreditsMeta);
    }
    if (data.containsKey('crew')) {
      context.handle(
          _crewMeta, crew.isAcceptableOrUnknown(data['crew']!, _crewMeta));
    } else if (isInserting) {
      context.missing(_crewMeta);
    }
    if (data.containsKey('passengers')) {
      context.handle(
          _passengersMeta,
          passengers.isAcceptableOrUnknown(
              data['passengers']!, _passengersMeta));
    } else if (isInserting) {
      context.missing(_passengersMeta);
    }
    if (data.containsKey('max_atmosphering_speed')) {
      context.handle(
          _maxAtmospheringSpeedMeta,
          maxAtmospheringSpeed.isAcceptableOrUnknown(
              data['max_atmosphering_speed']!, _maxAtmospheringSpeedMeta));
    } else if (isInserting) {
      context.missing(_maxAtmospheringSpeedMeta);
    }
    if (data.containsKey('cargo_capacity')) {
      context.handle(
          _cargoCapacityMeta,
          cargoCapacity.isAcceptableOrUnknown(
              data['cargo_capacity']!, _cargoCapacityMeta));
    } else if (isInserting) {
      context.missing(_cargoCapacityMeta);
    }
    if (data.containsKey('consumables')) {
      context.handle(
          _consumablesMeta,
          consumables.isAcceptableOrUnknown(
              data['consumables']!, _consumablesMeta));
    } else if (isInserting) {
      context.missing(_consumablesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Vehicle map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Vehicle(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      model: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}model'])!,
      vehicleClass: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}vehicle_class'])!,
      manufacturer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}manufacturer'])!,
      length: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}length'])!,
      costInCredits: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}cost_in_credits'])!,
      crew: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}crew'])!,
      passengers: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}passengers'])!,
      maxAtmospheringSpeed: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}max_atmosphering_speed'])!,
      cargoCapacity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cargo_capacity'])!,
      consumables: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}consumables'])!,
    );
  }

  @override
  $VehiclesTable createAlias(String alias) {
    return $VehiclesTable(attachedDatabase, alias);
  }
}

class Vehicle extends DataClass implements Insertable<Vehicle> {
  final int id;
  final String name;
  final String model;
  final String vehicleClass;
  final String manufacturer;
  final String length;
  final String costInCredits;
  final String crew;
  final String passengers;
  final String maxAtmospheringSpeed;
  final String cargoCapacity;
  final String consumables;
  const Vehicle(
      {required this.id,
      required this.name,
      required this.model,
      required this.vehicleClass,
      required this.manufacturer,
      required this.length,
      required this.costInCredits,
      required this.crew,
      required this.passengers,
      required this.maxAtmospheringSpeed,
      required this.cargoCapacity,
      required this.consumables});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['model'] = Variable<String>(model);
    map['vehicle_class'] = Variable<String>(vehicleClass);
    map['manufacturer'] = Variable<String>(manufacturer);
    map['length'] = Variable<String>(length);
    map['cost_in_credits'] = Variable<String>(costInCredits);
    map['crew'] = Variable<String>(crew);
    map['passengers'] = Variable<String>(passengers);
    map['max_atmosphering_speed'] = Variable<String>(maxAtmospheringSpeed);
    map['cargo_capacity'] = Variable<String>(cargoCapacity);
    map['consumables'] = Variable<String>(consumables);
    return map;
  }

  VehiclesCompanion toCompanion(bool nullToAbsent) {
    return VehiclesCompanion(
      id: Value(id),
      name: Value(name),
      model: Value(model),
      vehicleClass: Value(vehicleClass),
      manufacturer: Value(manufacturer),
      length: Value(length),
      costInCredits: Value(costInCredits),
      crew: Value(crew),
      passengers: Value(passengers),
      maxAtmospheringSpeed: Value(maxAtmospheringSpeed),
      cargoCapacity: Value(cargoCapacity),
      consumables: Value(consumables),
    );
  }

  factory Vehicle.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Vehicle(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      model: serializer.fromJson<String>(json['model']),
      vehicleClass: serializer.fromJson<String>(json['vehicleClass']),
      manufacturer: serializer.fromJson<String>(json['manufacturer']),
      length: serializer.fromJson<String>(json['length']),
      costInCredits: serializer.fromJson<String>(json['costInCredits']),
      crew: serializer.fromJson<String>(json['crew']),
      passengers: serializer.fromJson<String>(json['passengers']),
      maxAtmospheringSpeed:
          serializer.fromJson<String>(json['maxAtmospheringSpeed']),
      cargoCapacity: serializer.fromJson<String>(json['cargoCapacity']),
      consumables: serializer.fromJson<String>(json['consumables']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'model': serializer.toJson<String>(model),
      'vehicleClass': serializer.toJson<String>(vehicleClass),
      'manufacturer': serializer.toJson<String>(manufacturer),
      'length': serializer.toJson<String>(length),
      'costInCredits': serializer.toJson<String>(costInCredits),
      'crew': serializer.toJson<String>(crew),
      'passengers': serializer.toJson<String>(passengers),
      'maxAtmospheringSpeed': serializer.toJson<String>(maxAtmospheringSpeed),
      'cargoCapacity': serializer.toJson<String>(cargoCapacity),
      'consumables': serializer.toJson<String>(consumables),
    };
  }

  Vehicle copyWith(
          {int? id,
          String? name,
          String? model,
          String? vehicleClass,
          String? manufacturer,
          String? length,
          String? costInCredits,
          String? crew,
          String? passengers,
          String? maxAtmospheringSpeed,
          String? cargoCapacity,
          String? consumables}) =>
      Vehicle(
        id: id ?? this.id,
        name: name ?? this.name,
        model: model ?? this.model,
        vehicleClass: vehicleClass ?? this.vehicleClass,
        manufacturer: manufacturer ?? this.manufacturer,
        length: length ?? this.length,
        costInCredits: costInCredits ?? this.costInCredits,
        crew: crew ?? this.crew,
        passengers: passengers ?? this.passengers,
        maxAtmospheringSpeed: maxAtmospheringSpeed ?? this.maxAtmospheringSpeed,
        cargoCapacity: cargoCapacity ?? this.cargoCapacity,
        consumables: consumables ?? this.consumables,
      );
  Vehicle copyWithCompanion(VehiclesCompanion data) {
    return Vehicle(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      model: data.model.present ? data.model.value : this.model,
      vehicleClass: data.vehicleClass.present
          ? data.vehicleClass.value
          : this.vehicleClass,
      manufacturer: data.manufacturer.present
          ? data.manufacturer.value
          : this.manufacturer,
      length: data.length.present ? data.length.value : this.length,
      costInCredits: data.costInCredits.present
          ? data.costInCredits.value
          : this.costInCredits,
      crew: data.crew.present ? data.crew.value : this.crew,
      passengers:
          data.passengers.present ? data.passengers.value : this.passengers,
      maxAtmospheringSpeed: data.maxAtmospheringSpeed.present
          ? data.maxAtmospheringSpeed.value
          : this.maxAtmospheringSpeed,
      cargoCapacity: data.cargoCapacity.present
          ? data.cargoCapacity.value
          : this.cargoCapacity,
      consumables:
          data.consumables.present ? data.consumables.value : this.consumables,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Vehicle(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('model: $model, ')
          ..write('vehicleClass: $vehicleClass, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('length: $length, ')
          ..write('costInCredits: $costInCredits, ')
          ..write('crew: $crew, ')
          ..write('passengers: $passengers, ')
          ..write('maxAtmospheringSpeed: $maxAtmospheringSpeed, ')
          ..write('cargoCapacity: $cargoCapacity, ')
          ..write('consumables: $consumables')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      model,
      vehicleClass,
      manufacturer,
      length,
      costInCredits,
      crew,
      passengers,
      maxAtmospheringSpeed,
      cargoCapacity,
      consumables);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Vehicle &&
          other.id == this.id &&
          other.name == this.name &&
          other.model == this.model &&
          other.vehicleClass == this.vehicleClass &&
          other.manufacturer == this.manufacturer &&
          other.length == this.length &&
          other.costInCredits == this.costInCredits &&
          other.crew == this.crew &&
          other.passengers == this.passengers &&
          other.maxAtmospheringSpeed == this.maxAtmospheringSpeed &&
          other.cargoCapacity == this.cargoCapacity &&
          other.consumables == this.consumables);
}

class VehiclesCompanion extends UpdateCompanion<Vehicle> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> model;
  final Value<String> vehicleClass;
  final Value<String> manufacturer;
  final Value<String> length;
  final Value<String> costInCredits;
  final Value<String> crew;
  final Value<String> passengers;
  final Value<String> maxAtmospheringSpeed;
  final Value<String> cargoCapacity;
  final Value<String> consumables;
  const VehiclesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.model = const Value.absent(),
    this.vehicleClass = const Value.absent(),
    this.manufacturer = const Value.absent(),
    this.length = const Value.absent(),
    this.costInCredits = const Value.absent(),
    this.crew = const Value.absent(),
    this.passengers = const Value.absent(),
    this.maxAtmospheringSpeed = const Value.absent(),
    this.cargoCapacity = const Value.absent(),
    this.consumables = const Value.absent(),
  });
  VehiclesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String model,
    required String vehicleClass,
    required String manufacturer,
    required String length,
    required String costInCredits,
    required String crew,
    required String passengers,
    required String maxAtmospheringSpeed,
    required String cargoCapacity,
    required String consumables,
  })  : name = Value(name),
        model = Value(model),
        vehicleClass = Value(vehicleClass),
        manufacturer = Value(manufacturer),
        length = Value(length),
        costInCredits = Value(costInCredits),
        crew = Value(crew),
        passengers = Value(passengers),
        maxAtmospheringSpeed = Value(maxAtmospheringSpeed),
        cargoCapacity = Value(cargoCapacity),
        consumables = Value(consumables);
  static Insertable<Vehicle> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? model,
    Expression<String>? vehicleClass,
    Expression<String>? manufacturer,
    Expression<String>? length,
    Expression<String>? costInCredits,
    Expression<String>? crew,
    Expression<String>? passengers,
    Expression<String>? maxAtmospheringSpeed,
    Expression<String>? cargoCapacity,
    Expression<String>? consumables,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (model != null) 'model': model,
      if (vehicleClass != null) 'vehicle_class': vehicleClass,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (length != null) 'length': length,
      if (costInCredits != null) 'cost_in_credits': costInCredits,
      if (crew != null) 'crew': crew,
      if (passengers != null) 'passengers': passengers,
      if (maxAtmospheringSpeed != null)
        'max_atmosphering_speed': maxAtmospheringSpeed,
      if (cargoCapacity != null) 'cargo_capacity': cargoCapacity,
      if (consumables != null) 'consumables': consumables,
    });
  }

  VehiclesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? model,
      Value<String>? vehicleClass,
      Value<String>? manufacturer,
      Value<String>? length,
      Value<String>? costInCredits,
      Value<String>? crew,
      Value<String>? passengers,
      Value<String>? maxAtmospheringSpeed,
      Value<String>? cargoCapacity,
      Value<String>? consumables}) {
    return VehiclesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      model: model ?? this.model,
      vehicleClass: vehicleClass ?? this.vehicleClass,
      manufacturer: manufacturer ?? this.manufacturer,
      length: length ?? this.length,
      costInCredits: costInCredits ?? this.costInCredits,
      crew: crew ?? this.crew,
      passengers: passengers ?? this.passengers,
      maxAtmospheringSpeed: maxAtmospheringSpeed ?? this.maxAtmospheringSpeed,
      cargoCapacity: cargoCapacity ?? this.cargoCapacity,
      consumables: consumables ?? this.consumables,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (vehicleClass.present) {
      map['vehicle_class'] = Variable<String>(vehicleClass.value);
    }
    if (manufacturer.present) {
      map['manufacturer'] = Variable<String>(manufacturer.value);
    }
    if (length.present) {
      map['length'] = Variable<String>(length.value);
    }
    if (costInCredits.present) {
      map['cost_in_credits'] = Variable<String>(costInCredits.value);
    }
    if (crew.present) {
      map['crew'] = Variable<String>(crew.value);
    }
    if (passengers.present) {
      map['passengers'] = Variable<String>(passengers.value);
    }
    if (maxAtmospheringSpeed.present) {
      map['max_atmosphering_speed'] =
          Variable<String>(maxAtmospheringSpeed.value);
    }
    if (cargoCapacity.present) {
      map['cargo_capacity'] = Variable<String>(cargoCapacity.value);
    }
    if (consumables.present) {
      map['consumables'] = Variable<String>(consumables.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VehiclesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('model: $model, ')
          ..write('vehicleClass: $vehicleClass, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('length: $length, ')
          ..write('costInCredits: $costInCredits, ')
          ..write('crew: $crew, ')
          ..write('passengers: $passengers, ')
          ..write('maxAtmospheringSpeed: $maxAtmospheringSpeed, ')
          ..write('cargoCapacity: $cargoCapacity, ')
          ..write('consumables: $consumables')
          ..write(')'))
        .toString();
  }
}

class $FilmsTable extends Films with TableInfo<$FilmsTable, Film> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FilmsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _episodeIdMeta =
      const VerificationMeta('episodeId');
  @override
  late final GeneratedColumn<int> episodeId = GeneratedColumn<int>(
      'episode_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _openingCrawlMeta =
      const VerificationMeta('openingCrawl');
  @override
  late final GeneratedColumn<String> openingCrawl = GeneratedColumn<String>(
      'opening_crawl', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _directorMeta =
      const VerificationMeta('director');
  @override
  late final GeneratedColumn<String> director = GeneratedColumn<String>(
      'director', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _producerMeta =
      const VerificationMeta('producer');
  @override
  late final GeneratedColumn<String> producer = GeneratedColumn<String>(
      'producer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _releaseDateMeta =
      const VerificationMeta('releaseDate');
  @override
  late final GeneratedColumn<String> releaseDate = GeneratedColumn<String>(
      'release_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, episodeId, openingCrawl, director, producer, releaseDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'films';
  @override
  VerificationContext validateIntegrity(Insertable<Film> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('episode_id')) {
      context.handle(_episodeIdMeta,
          episodeId.isAcceptableOrUnknown(data['episode_id']!, _episodeIdMeta));
    } else if (isInserting) {
      context.missing(_episodeIdMeta);
    }
    if (data.containsKey('opening_crawl')) {
      context.handle(
          _openingCrawlMeta,
          openingCrawl.isAcceptableOrUnknown(
              data['opening_crawl']!, _openingCrawlMeta));
    } else if (isInserting) {
      context.missing(_openingCrawlMeta);
    }
    if (data.containsKey('director')) {
      context.handle(_directorMeta,
          director.isAcceptableOrUnknown(data['director']!, _directorMeta));
    } else if (isInserting) {
      context.missing(_directorMeta);
    }
    if (data.containsKey('producer')) {
      context.handle(_producerMeta,
          producer.isAcceptableOrUnknown(data['producer']!, _producerMeta));
    } else if (isInserting) {
      context.missing(_producerMeta);
    }
    if (data.containsKey('release_date')) {
      context.handle(
          _releaseDateMeta,
          releaseDate.isAcceptableOrUnknown(
              data['release_date']!, _releaseDateMeta));
    } else if (isInserting) {
      context.missing(_releaseDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Film map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Film(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      episodeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}episode_id'])!,
      openingCrawl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}opening_crawl'])!,
      director: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}director'])!,
      producer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}producer'])!,
      releaseDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}release_date'])!,
    );
  }

  @override
  $FilmsTable createAlias(String alias) {
    return $FilmsTable(attachedDatabase, alias);
  }
}

class Film extends DataClass implements Insertable<Film> {
  final int id;
  final String title;
  final int episodeId;
  final String openingCrawl;
  final String director;
  final String producer;
  final String releaseDate;
  const Film(
      {required this.id,
      required this.title,
      required this.episodeId,
      required this.openingCrawl,
      required this.director,
      required this.producer,
      required this.releaseDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['episode_id'] = Variable<int>(episodeId);
    map['opening_crawl'] = Variable<String>(openingCrawl);
    map['director'] = Variable<String>(director);
    map['producer'] = Variable<String>(producer);
    map['release_date'] = Variable<String>(releaseDate);
    return map;
  }

  FilmsCompanion toCompanion(bool nullToAbsent) {
    return FilmsCompanion(
      id: Value(id),
      title: Value(title),
      episodeId: Value(episodeId),
      openingCrawl: Value(openingCrawl),
      director: Value(director),
      producer: Value(producer),
      releaseDate: Value(releaseDate),
    );
  }

  factory Film.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Film(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      episodeId: serializer.fromJson<int>(json['episodeId']),
      openingCrawl: serializer.fromJson<String>(json['openingCrawl']),
      director: serializer.fromJson<String>(json['director']),
      producer: serializer.fromJson<String>(json['producer']),
      releaseDate: serializer.fromJson<String>(json['releaseDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'episodeId': serializer.toJson<int>(episodeId),
      'openingCrawl': serializer.toJson<String>(openingCrawl),
      'director': serializer.toJson<String>(director),
      'producer': serializer.toJson<String>(producer),
      'releaseDate': serializer.toJson<String>(releaseDate),
    };
  }

  Film copyWith(
          {int? id,
          String? title,
          int? episodeId,
          String? openingCrawl,
          String? director,
          String? producer,
          String? releaseDate}) =>
      Film(
        id: id ?? this.id,
        title: title ?? this.title,
        episodeId: episodeId ?? this.episodeId,
        openingCrawl: openingCrawl ?? this.openingCrawl,
        director: director ?? this.director,
        producer: producer ?? this.producer,
        releaseDate: releaseDate ?? this.releaseDate,
      );
  Film copyWithCompanion(FilmsCompanion data) {
    return Film(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      episodeId: data.episodeId.present ? data.episodeId.value : this.episodeId,
      openingCrawl: data.openingCrawl.present
          ? data.openingCrawl.value
          : this.openingCrawl,
      director: data.director.present ? data.director.value : this.director,
      producer: data.producer.present ? data.producer.value : this.producer,
      releaseDate:
          data.releaseDate.present ? data.releaseDate.value : this.releaseDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Film(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('episodeId: $episodeId, ')
          ..write('openingCrawl: $openingCrawl, ')
          ..write('director: $director, ')
          ..write('producer: $producer, ')
          ..write('releaseDate: $releaseDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, title, episodeId, openingCrawl, director, producer, releaseDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Film &&
          other.id == this.id &&
          other.title == this.title &&
          other.episodeId == this.episodeId &&
          other.openingCrawl == this.openingCrawl &&
          other.director == this.director &&
          other.producer == this.producer &&
          other.releaseDate == this.releaseDate);
}

class FilmsCompanion extends UpdateCompanion<Film> {
  final Value<int> id;
  final Value<String> title;
  final Value<int> episodeId;
  final Value<String> openingCrawl;
  final Value<String> director;
  final Value<String> producer;
  final Value<String> releaseDate;
  const FilmsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.episodeId = const Value.absent(),
    this.openingCrawl = const Value.absent(),
    this.director = const Value.absent(),
    this.producer = const Value.absent(),
    this.releaseDate = const Value.absent(),
  });
  FilmsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required int episodeId,
    required String openingCrawl,
    required String director,
    required String producer,
    required String releaseDate,
  })  : title = Value(title),
        episodeId = Value(episodeId),
        openingCrawl = Value(openingCrawl),
        director = Value(director),
        producer = Value(producer),
        releaseDate = Value(releaseDate);
  static Insertable<Film> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? episodeId,
    Expression<String>? openingCrawl,
    Expression<String>? director,
    Expression<String>? producer,
    Expression<String>? releaseDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (episodeId != null) 'episode_id': episodeId,
      if (openingCrawl != null) 'opening_crawl': openingCrawl,
      if (director != null) 'director': director,
      if (producer != null) 'producer': producer,
      if (releaseDate != null) 'release_date': releaseDate,
    });
  }

  FilmsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<int>? episodeId,
      Value<String>? openingCrawl,
      Value<String>? director,
      Value<String>? producer,
      Value<String>? releaseDate}) {
    return FilmsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      episodeId: episodeId ?? this.episodeId,
      openingCrawl: openingCrawl ?? this.openingCrawl,
      director: director ?? this.director,
      producer: producer ?? this.producer,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (episodeId.present) {
      map['episode_id'] = Variable<int>(episodeId.value);
    }
    if (openingCrawl.present) {
      map['opening_crawl'] = Variable<String>(openingCrawl.value);
    }
    if (director.present) {
      map['director'] = Variable<String>(director.value);
    }
    if (producer.present) {
      map['producer'] = Variable<String>(producer.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<String>(releaseDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FilmsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('episodeId: $episodeId, ')
          ..write('openingCrawl: $openingCrawl, ')
          ..write('director: $director, ')
          ..write('producer: $producer, ')
          ..write('releaseDate: $releaseDate')
          ..write(')'))
        .toString();
  }
}

class $VehiclesFilmsTable extends VehiclesFilms
    with TableInfo<$VehiclesFilmsTable, VehiclesFilm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VehiclesFilmsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _vehicleIdMeta =
      const VerificationMeta('vehicleId');
  @override
  late final GeneratedColumn<int> vehicleId = GeneratedColumn<int>(
      'vehicle_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES vehicles (id)'));
  static const VerificationMeta _filmIdMeta = const VerificationMeta('filmId');
  @override
  late final GeneratedColumn<int> filmId = GeneratedColumn<int>(
      'film_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES films (id)'));
  @override
  List<GeneratedColumn> get $columns => [vehicleId, filmId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vehicles_films';
  @override
  VerificationContext validateIntegrity(Insertable<VehiclesFilm> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('vehicle_id')) {
      context.handle(_vehicleIdMeta,
          vehicleId.isAcceptableOrUnknown(data['vehicle_id']!, _vehicleIdMeta));
    } else if (isInserting) {
      context.missing(_vehicleIdMeta);
    }
    if (data.containsKey('film_id')) {
      context.handle(_filmIdMeta,
          filmId.isAcceptableOrUnknown(data['film_id']!, _filmIdMeta));
    } else if (isInserting) {
      context.missing(_filmIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {vehicleId, filmId};
  @override
  VehiclesFilm map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VehiclesFilm(
      vehicleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vehicle_id'])!,
      filmId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}film_id'])!,
    );
  }

  @override
  $VehiclesFilmsTable createAlias(String alias) {
    return $VehiclesFilmsTable(attachedDatabase, alias);
  }
}

class VehiclesFilm extends DataClass implements Insertable<VehiclesFilm> {
  final int vehicleId;
  final int filmId;
  const VehiclesFilm({required this.vehicleId, required this.filmId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['vehicle_id'] = Variable<int>(vehicleId);
    map['film_id'] = Variable<int>(filmId);
    return map;
  }

  VehiclesFilmsCompanion toCompanion(bool nullToAbsent) {
    return VehiclesFilmsCompanion(
      vehicleId: Value(vehicleId),
      filmId: Value(filmId),
    );
  }

  factory VehiclesFilm.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VehiclesFilm(
      vehicleId: serializer.fromJson<int>(json['vehicleId']),
      filmId: serializer.fromJson<int>(json['filmId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'vehicleId': serializer.toJson<int>(vehicleId),
      'filmId': serializer.toJson<int>(filmId),
    };
  }

  VehiclesFilm copyWith({int? vehicleId, int? filmId}) => VehiclesFilm(
        vehicleId: vehicleId ?? this.vehicleId,
        filmId: filmId ?? this.filmId,
      );
  VehiclesFilm copyWithCompanion(VehiclesFilmsCompanion data) {
    return VehiclesFilm(
      vehicleId: data.vehicleId.present ? data.vehicleId.value : this.vehicleId,
      filmId: data.filmId.present ? data.filmId.value : this.filmId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VehiclesFilm(')
          ..write('vehicleId: $vehicleId, ')
          ..write('filmId: $filmId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(vehicleId, filmId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VehiclesFilm &&
          other.vehicleId == this.vehicleId &&
          other.filmId == this.filmId);
}

class VehiclesFilmsCompanion extends UpdateCompanion<VehiclesFilm> {
  final Value<int> vehicleId;
  final Value<int> filmId;
  final Value<int> rowid;
  const VehiclesFilmsCompanion({
    this.vehicleId = const Value.absent(),
    this.filmId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VehiclesFilmsCompanion.insert({
    required int vehicleId,
    required int filmId,
    this.rowid = const Value.absent(),
  })  : vehicleId = Value(vehicleId),
        filmId = Value(filmId);
  static Insertable<VehiclesFilm> custom({
    Expression<int>? vehicleId,
    Expression<int>? filmId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (vehicleId != null) 'vehicle_id': vehicleId,
      if (filmId != null) 'film_id': filmId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VehiclesFilmsCompanion copyWith(
      {Value<int>? vehicleId, Value<int>? filmId, Value<int>? rowid}) {
    return VehiclesFilmsCompanion(
      vehicleId: vehicleId ?? this.vehicleId,
      filmId: filmId ?? this.filmId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (vehicleId.present) {
      map['vehicle_id'] = Variable<int>(vehicleId.value);
    }
    if (filmId.present) {
      map['film_id'] = Variable<int>(filmId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VehiclesFilmsCompanion(')
          ..write('vehicleId: $vehicleId, ')
          ..write('filmId: $filmId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StarshipsFilmsTable extends StarshipsFilms
    with TableInfo<$StarshipsFilmsTable, StarshipsFilm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StarshipsFilmsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _starshipIdMeta =
      const VerificationMeta('starshipId');
  @override
  late final GeneratedColumn<int> starshipId = GeneratedColumn<int>(
      'starship_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES starships (id)'));
  static const VerificationMeta _filmIdMeta = const VerificationMeta('filmId');
  @override
  late final GeneratedColumn<int> filmId = GeneratedColumn<int>(
      'film_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES films (id)'));
  @override
  List<GeneratedColumn> get $columns => [starshipId, filmId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'starships_films';
  @override
  VerificationContext validateIntegrity(Insertable<StarshipsFilm> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('starship_id')) {
      context.handle(
          _starshipIdMeta,
          starshipId.isAcceptableOrUnknown(
              data['starship_id']!, _starshipIdMeta));
    } else if (isInserting) {
      context.missing(_starshipIdMeta);
    }
    if (data.containsKey('film_id')) {
      context.handle(_filmIdMeta,
          filmId.isAcceptableOrUnknown(data['film_id']!, _filmIdMeta));
    } else if (isInserting) {
      context.missing(_filmIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {starshipId, filmId};
  @override
  StarshipsFilm map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StarshipsFilm(
      starshipId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}starship_id'])!,
      filmId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}film_id'])!,
    );
  }

  @override
  $StarshipsFilmsTable createAlias(String alias) {
    return $StarshipsFilmsTable(attachedDatabase, alias);
  }
}

class StarshipsFilm extends DataClass implements Insertable<StarshipsFilm> {
  final int starshipId;
  final int filmId;
  const StarshipsFilm({required this.starshipId, required this.filmId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['starship_id'] = Variable<int>(starshipId);
    map['film_id'] = Variable<int>(filmId);
    return map;
  }

  StarshipsFilmsCompanion toCompanion(bool nullToAbsent) {
    return StarshipsFilmsCompanion(
      starshipId: Value(starshipId),
      filmId: Value(filmId),
    );
  }

  factory StarshipsFilm.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StarshipsFilm(
      starshipId: serializer.fromJson<int>(json['starshipId']),
      filmId: serializer.fromJson<int>(json['filmId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'starshipId': serializer.toJson<int>(starshipId),
      'filmId': serializer.toJson<int>(filmId),
    };
  }

  StarshipsFilm copyWith({int? starshipId, int? filmId}) => StarshipsFilm(
        starshipId: starshipId ?? this.starshipId,
        filmId: filmId ?? this.filmId,
      );
  StarshipsFilm copyWithCompanion(StarshipsFilmsCompanion data) {
    return StarshipsFilm(
      starshipId:
          data.starshipId.present ? data.starshipId.value : this.starshipId,
      filmId: data.filmId.present ? data.filmId.value : this.filmId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StarshipsFilm(')
          ..write('starshipId: $starshipId, ')
          ..write('filmId: $filmId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(starshipId, filmId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StarshipsFilm &&
          other.starshipId == this.starshipId &&
          other.filmId == this.filmId);
}

class StarshipsFilmsCompanion extends UpdateCompanion<StarshipsFilm> {
  final Value<int> starshipId;
  final Value<int> filmId;
  final Value<int> rowid;
  const StarshipsFilmsCompanion({
    this.starshipId = const Value.absent(),
    this.filmId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StarshipsFilmsCompanion.insert({
    required int starshipId,
    required int filmId,
    this.rowid = const Value.absent(),
  })  : starshipId = Value(starshipId),
        filmId = Value(filmId);
  static Insertable<StarshipsFilm> custom({
    Expression<int>? starshipId,
    Expression<int>? filmId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (starshipId != null) 'starship_id': starshipId,
      if (filmId != null) 'film_id': filmId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StarshipsFilmsCompanion copyWith(
      {Value<int>? starshipId, Value<int>? filmId, Value<int>? rowid}) {
    return StarshipsFilmsCompanion(
      starshipId: starshipId ?? this.starshipId,
      filmId: filmId ?? this.filmId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (starshipId.present) {
      map['starship_id'] = Variable<int>(starshipId.value);
    }
    if (filmId.present) {
      map['film_id'] = Variable<int>(filmId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StarshipsFilmsCompanion(')
          ..write('starshipId: $starshipId, ')
          ..write('filmId: $filmId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SpeciesFilmsTable extends SpeciesFilms
    with TableInfo<$SpeciesFilmsTable, SpeciesFilm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpeciesFilmsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _speciesIdMeta =
      const VerificationMeta('speciesId');
  @override
  late final GeneratedColumn<int> speciesId = GeneratedColumn<int>(
      'species_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES species (id)'));
  static const VerificationMeta _filmIdMeta = const VerificationMeta('filmId');
  @override
  late final GeneratedColumn<int> filmId = GeneratedColumn<int>(
      'film_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES films (id)'));
  @override
  List<GeneratedColumn> get $columns => [speciesId, filmId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'species_films';
  @override
  VerificationContext validateIntegrity(Insertable<SpeciesFilm> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('species_id')) {
      context.handle(_speciesIdMeta,
          speciesId.isAcceptableOrUnknown(data['species_id']!, _speciesIdMeta));
    } else if (isInserting) {
      context.missing(_speciesIdMeta);
    }
    if (data.containsKey('film_id')) {
      context.handle(_filmIdMeta,
          filmId.isAcceptableOrUnknown(data['film_id']!, _filmIdMeta));
    } else if (isInserting) {
      context.missing(_filmIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {speciesId, filmId};
  @override
  SpeciesFilm map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SpeciesFilm(
      speciesId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}species_id'])!,
      filmId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}film_id'])!,
    );
  }

  @override
  $SpeciesFilmsTable createAlias(String alias) {
    return $SpeciesFilmsTable(attachedDatabase, alias);
  }
}

class SpeciesFilm extends DataClass implements Insertable<SpeciesFilm> {
  final int speciesId;
  final int filmId;
  const SpeciesFilm({required this.speciesId, required this.filmId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['species_id'] = Variable<int>(speciesId);
    map['film_id'] = Variable<int>(filmId);
    return map;
  }

  SpeciesFilmsCompanion toCompanion(bool nullToAbsent) {
    return SpeciesFilmsCompanion(
      speciesId: Value(speciesId),
      filmId: Value(filmId),
    );
  }

  factory SpeciesFilm.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SpeciesFilm(
      speciesId: serializer.fromJson<int>(json['speciesId']),
      filmId: serializer.fromJson<int>(json['filmId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'speciesId': serializer.toJson<int>(speciesId),
      'filmId': serializer.toJson<int>(filmId),
    };
  }

  SpeciesFilm copyWith({int? speciesId, int? filmId}) => SpeciesFilm(
        speciesId: speciesId ?? this.speciesId,
        filmId: filmId ?? this.filmId,
      );
  SpeciesFilm copyWithCompanion(SpeciesFilmsCompanion data) {
    return SpeciesFilm(
      speciesId: data.speciesId.present ? data.speciesId.value : this.speciesId,
      filmId: data.filmId.present ? data.filmId.value : this.filmId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SpeciesFilm(')
          ..write('speciesId: $speciesId, ')
          ..write('filmId: $filmId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(speciesId, filmId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpeciesFilm &&
          other.speciesId == this.speciesId &&
          other.filmId == this.filmId);
}

class SpeciesFilmsCompanion extends UpdateCompanion<SpeciesFilm> {
  final Value<int> speciesId;
  final Value<int> filmId;
  final Value<int> rowid;
  const SpeciesFilmsCompanion({
    this.speciesId = const Value.absent(),
    this.filmId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SpeciesFilmsCompanion.insert({
    required int speciesId,
    required int filmId,
    this.rowid = const Value.absent(),
  })  : speciesId = Value(speciesId),
        filmId = Value(filmId);
  static Insertable<SpeciesFilm> custom({
    Expression<int>? speciesId,
    Expression<int>? filmId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (speciesId != null) 'species_id': speciesId,
      if (filmId != null) 'film_id': filmId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SpeciesFilmsCompanion copyWith(
      {Value<int>? speciesId, Value<int>? filmId, Value<int>? rowid}) {
    return SpeciesFilmsCompanion(
      speciesId: speciesId ?? this.speciesId,
      filmId: filmId ?? this.filmId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (speciesId.present) {
      map['species_id'] = Variable<int>(speciesId.value);
    }
    if (filmId.present) {
      map['film_id'] = Variable<int>(filmId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpeciesFilmsCompanion(')
          ..write('speciesId: $speciesId, ')
          ..write('filmId: $filmId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PlanetsFilmsTable extends PlanetsFilms
    with TableInfo<$PlanetsFilmsTable, PlanetsFilm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlanetsFilmsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _planetIdMeta =
      const VerificationMeta('planetId');
  @override
  late final GeneratedColumn<int> planetId = GeneratedColumn<int>(
      'planet_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES planets (id)'));
  static const VerificationMeta _filmIdMeta = const VerificationMeta('filmId');
  @override
  late final GeneratedColumn<int> filmId = GeneratedColumn<int>(
      'film_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES films (id)'));
  @override
  List<GeneratedColumn> get $columns => [planetId, filmId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'planets_films';
  @override
  VerificationContext validateIntegrity(Insertable<PlanetsFilm> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('planet_id')) {
      context.handle(_planetIdMeta,
          planetId.isAcceptableOrUnknown(data['planet_id']!, _planetIdMeta));
    } else if (isInserting) {
      context.missing(_planetIdMeta);
    }
    if (data.containsKey('film_id')) {
      context.handle(_filmIdMeta,
          filmId.isAcceptableOrUnknown(data['film_id']!, _filmIdMeta));
    } else if (isInserting) {
      context.missing(_filmIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {planetId, filmId};
  @override
  PlanetsFilm map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlanetsFilm(
      planetId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}planet_id'])!,
      filmId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}film_id'])!,
    );
  }

  @override
  $PlanetsFilmsTable createAlias(String alias) {
    return $PlanetsFilmsTable(attachedDatabase, alias);
  }
}

class PlanetsFilm extends DataClass implements Insertable<PlanetsFilm> {
  final int planetId;
  final int filmId;
  const PlanetsFilm({required this.planetId, required this.filmId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['planet_id'] = Variable<int>(planetId);
    map['film_id'] = Variable<int>(filmId);
    return map;
  }

  PlanetsFilmsCompanion toCompanion(bool nullToAbsent) {
    return PlanetsFilmsCompanion(
      planetId: Value(planetId),
      filmId: Value(filmId),
    );
  }

  factory PlanetsFilm.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlanetsFilm(
      planetId: serializer.fromJson<int>(json['planetId']),
      filmId: serializer.fromJson<int>(json['filmId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'planetId': serializer.toJson<int>(planetId),
      'filmId': serializer.toJson<int>(filmId),
    };
  }

  PlanetsFilm copyWith({int? planetId, int? filmId}) => PlanetsFilm(
        planetId: planetId ?? this.planetId,
        filmId: filmId ?? this.filmId,
      );
  PlanetsFilm copyWithCompanion(PlanetsFilmsCompanion data) {
    return PlanetsFilm(
      planetId: data.planetId.present ? data.planetId.value : this.planetId,
      filmId: data.filmId.present ? data.filmId.value : this.filmId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlanetsFilm(')
          ..write('planetId: $planetId, ')
          ..write('filmId: $filmId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(planetId, filmId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlanetsFilm &&
          other.planetId == this.planetId &&
          other.filmId == this.filmId);
}

class PlanetsFilmsCompanion extends UpdateCompanion<PlanetsFilm> {
  final Value<int> planetId;
  final Value<int> filmId;
  final Value<int> rowid;
  const PlanetsFilmsCompanion({
    this.planetId = const Value.absent(),
    this.filmId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PlanetsFilmsCompanion.insert({
    required int planetId,
    required int filmId,
    this.rowid = const Value.absent(),
  })  : planetId = Value(planetId),
        filmId = Value(filmId);
  static Insertable<PlanetsFilm> custom({
    Expression<int>? planetId,
    Expression<int>? filmId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (planetId != null) 'planet_id': planetId,
      if (filmId != null) 'film_id': filmId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlanetsFilmsCompanion copyWith(
      {Value<int>? planetId, Value<int>? filmId, Value<int>? rowid}) {
    return PlanetsFilmsCompanion(
      planetId: planetId ?? this.planetId,
      filmId: filmId ?? this.filmId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (planetId.present) {
      map['planet_id'] = Variable<int>(planetId.value);
    }
    if (filmId.present) {
      map['film_id'] = Variable<int>(filmId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlanetsFilmsCompanion(')
          ..write('planetId: $planetId, ')
          ..write('filmId: $filmId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PlanetsPeopleTable extends PlanetsPeople
    with TableInfo<$PlanetsPeopleTable, PlanetsPeopleData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlanetsPeopleTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _planetIdMeta =
      const VerificationMeta('planetId');
  @override
  late final GeneratedColumn<int> planetId = GeneratedColumn<int>(
      'planet_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES planets (id)'));
  static const VerificationMeta _peopleIdMeta =
      const VerificationMeta('peopleId');
  @override
  late final GeneratedColumn<int> peopleId = GeneratedColumn<int>(
      'people_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES people (id)'));
  @override
  List<GeneratedColumn> get $columns => [planetId, peopleId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'planets_people';
  @override
  VerificationContext validateIntegrity(Insertable<PlanetsPeopleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('planet_id')) {
      context.handle(_planetIdMeta,
          planetId.isAcceptableOrUnknown(data['planet_id']!, _planetIdMeta));
    } else if (isInserting) {
      context.missing(_planetIdMeta);
    }
    if (data.containsKey('people_id')) {
      context.handle(_peopleIdMeta,
          peopleId.isAcceptableOrUnknown(data['people_id']!, _peopleIdMeta));
    } else if (isInserting) {
      context.missing(_peopleIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {planetId, peopleId};
  @override
  PlanetsPeopleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlanetsPeopleData(
      planetId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}planet_id'])!,
      peopleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}people_id'])!,
    );
  }

  @override
  $PlanetsPeopleTable createAlias(String alias) {
    return $PlanetsPeopleTable(attachedDatabase, alias);
  }
}

class PlanetsPeopleData extends DataClass
    implements Insertable<PlanetsPeopleData> {
  final int planetId;
  final int peopleId;
  const PlanetsPeopleData({required this.planetId, required this.peopleId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['planet_id'] = Variable<int>(planetId);
    map['people_id'] = Variable<int>(peopleId);
    return map;
  }

  PlanetsPeopleCompanion toCompanion(bool nullToAbsent) {
    return PlanetsPeopleCompanion(
      planetId: Value(planetId),
      peopleId: Value(peopleId),
    );
  }

  factory PlanetsPeopleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlanetsPeopleData(
      planetId: serializer.fromJson<int>(json['planetId']),
      peopleId: serializer.fromJson<int>(json['peopleId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'planetId': serializer.toJson<int>(planetId),
      'peopleId': serializer.toJson<int>(peopleId),
    };
  }

  PlanetsPeopleData copyWith({int? planetId, int? peopleId}) =>
      PlanetsPeopleData(
        planetId: planetId ?? this.planetId,
        peopleId: peopleId ?? this.peopleId,
      );
  PlanetsPeopleData copyWithCompanion(PlanetsPeopleCompanion data) {
    return PlanetsPeopleData(
      planetId: data.planetId.present ? data.planetId.value : this.planetId,
      peopleId: data.peopleId.present ? data.peopleId.value : this.peopleId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlanetsPeopleData(')
          ..write('planetId: $planetId, ')
          ..write('peopleId: $peopleId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(planetId, peopleId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlanetsPeopleData &&
          other.planetId == this.planetId &&
          other.peopleId == this.peopleId);
}

class PlanetsPeopleCompanion extends UpdateCompanion<PlanetsPeopleData> {
  final Value<int> planetId;
  final Value<int> peopleId;
  final Value<int> rowid;
  const PlanetsPeopleCompanion({
    this.planetId = const Value.absent(),
    this.peopleId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PlanetsPeopleCompanion.insert({
    required int planetId,
    required int peopleId,
    this.rowid = const Value.absent(),
  })  : planetId = Value(planetId),
        peopleId = Value(peopleId);
  static Insertable<PlanetsPeopleData> custom({
    Expression<int>? planetId,
    Expression<int>? peopleId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (planetId != null) 'planet_id': planetId,
      if (peopleId != null) 'people_id': peopleId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlanetsPeopleCompanion copyWith(
      {Value<int>? planetId, Value<int>? peopleId, Value<int>? rowid}) {
    return PlanetsPeopleCompanion(
      planetId: planetId ?? this.planetId,
      peopleId: peopleId ?? this.peopleId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (planetId.present) {
      map['planet_id'] = Variable<int>(planetId.value);
    }
    if (peopleId.present) {
      map['people_id'] = Variable<int>(peopleId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlanetsPeopleCompanion(')
          ..write('planetId: $planetId, ')
          ..write('peopleId: $peopleId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PeopleFilmsTable extends PeopleFilms
    with TableInfo<$PeopleFilmsTable, PeopleFilm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PeopleFilmsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _peopleIdMeta =
      const VerificationMeta('peopleId');
  @override
  late final GeneratedColumn<int> peopleId = GeneratedColumn<int>(
      'people_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES people (id)'));
  static const VerificationMeta _filmIdMeta = const VerificationMeta('filmId');
  @override
  late final GeneratedColumn<int> filmId = GeneratedColumn<int>(
      'film_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES films (id)'));
  @override
  List<GeneratedColumn> get $columns => [peopleId, filmId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'people_films';
  @override
  VerificationContext validateIntegrity(Insertable<PeopleFilm> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('people_id')) {
      context.handle(_peopleIdMeta,
          peopleId.isAcceptableOrUnknown(data['people_id']!, _peopleIdMeta));
    } else if (isInserting) {
      context.missing(_peopleIdMeta);
    }
    if (data.containsKey('film_id')) {
      context.handle(_filmIdMeta,
          filmId.isAcceptableOrUnknown(data['film_id']!, _filmIdMeta));
    } else if (isInserting) {
      context.missing(_filmIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {peopleId, filmId};
  @override
  PeopleFilm map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PeopleFilm(
      peopleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}people_id'])!,
      filmId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}film_id'])!,
    );
  }

  @override
  $PeopleFilmsTable createAlias(String alias) {
    return $PeopleFilmsTable(attachedDatabase, alias);
  }
}

class PeopleFilm extends DataClass implements Insertable<PeopleFilm> {
  final int peopleId;
  final int filmId;
  const PeopleFilm({required this.peopleId, required this.filmId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['people_id'] = Variable<int>(peopleId);
    map['film_id'] = Variable<int>(filmId);
    return map;
  }

  PeopleFilmsCompanion toCompanion(bool nullToAbsent) {
    return PeopleFilmsCompanion(
      peopleId: Value(peopleId),
      filmId: Value(filmId),
    );
  }

  factory PeopleFilm.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PeopleFilm(
      peopleId: serializer.fromJson<int>(json['peopleId']),
      filmId: serializer.fromJson<int>(json['filmId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'peopleId': serializer.toJson<int>(peopleId),
      'filmId': serializer.toJson<int>(filmId),
    };
  }

  PeopleFilm copyWith({int? peopleId, int? filmId}) => PeopleFilm(
        peopleId: peopleId ?? this.peopleId,
        filmId: filmId ?? this.filmId,
      );
  PeopleFilm copyWithCompanion(PeopleFilmsCompanion data) {
    return PeopleFilm(
      peopleId: data.peopleId.present ? data.peopleId.value : this.peopleId,
      filmId: data.filmId.present ? data.filmId.value : this.filmId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PeopleFilm(')
          ..write('peopleId: $peopleId, ')
          ..write('filmId: $filmId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(peopleId, filmId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PeopleFilm &&
          other.peopleId == this.peopleId &&
          other.filmId == this.filmId);
}

class PeopleFilmsCompanion extends UpdateCompanion<PeopleFilm> {
  final Value<int> peopleId;
  final Value<int> filmId;
  final Value<int> rowid;
  const PeopleFilmsCompanion({
    this.peopleId = const Value.absent(),
    this.filmId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PeopleFilmsCompanion.insert({
    required int peopleId,
    required int filmId,
    this.rowid = const Value.absent(),
  })  : peopleId = Value(peopleId),
        filmId = Value(filmId);
  static Insertable<PeopleFilm> custom({
    Expression<int>? peopleId,
    Expression<int>? filmId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (peopleId != null) 'people_id': peopleId,
      if (filmId != null) 'film_id': filmId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PeopleFilmsCompanion copyWith(
      {Value<int>? peopleId, Value<int>? filmId, Value<int>? rowid}) {
    return PeopleFilmsCompanion(
      peopleId: peopleId ?? this.peopleId,
      filmId: filmId ?? this.filmId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (peopleId.present) {
      map['people_id'] = Variable<int>(peopleId.value);
    }
    if (filmId.present) {
      map['film_id'] = Variable<int>(filmId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PeopleFilmsCompanion(')
          ..write('peopleId: $peopleId, ')
          ..write('filmId: $filmId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PeopleVehiclesTable extends PeopleVehicles
    with TableInfo<$PeopleVehiclesTable, PeopleVehicle> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PeopleVehiclesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _peopleIdMeta =
      const VerificationMeta('peopleId');
  @override
  late final GeneratedColumn<int> peopleId = GeneratedColumn<int>(
      'people_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES people (id)'));
  static const VerificationMeta _vehicleIdMeta =
      const VerificationMeta('vehicleId');
  @override
  late final GeneratedColumn<int> vehicleId = GeneratedColumn<int>(
      'vehicle_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES vehicles (id)'));
  @override
  List<GeneratedColumn> get $columns => [peopleId, vehicleId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'people_vehicles';
  @override
  VerificationContext validateIntegrity(Insertable<PeopleVehicle> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('people_id')) {
      context.handle(_peopleIdMeta,
          peopleId.isAcceptableOrUnknown(data['people_id']!, _peopleIdMeta));
    } else if (isInserting) {
      context.missing(_peopleIdMeta);
    }
    if (data.containsKey('vehicle_id')) {
      context.handle(_vehicleIdMeta,
          vehicleId.isAcceptableOrUnknown(data['vehicle_id']!, _vehicleIdMeta));
    } else if (isInserting) {
      context.missing(_vehicleIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {peopleId, vehicleId};
  @override
  PeopleVehicle map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PeopleVehicle(
      peopleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}people_id'])!,
      vehicleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vehicle_id'])!,
    );
  }

  @override
  $PeopleVehiclesTable createAlias(String alias) {
    return $PeopleVehiclesTable(attachedDatabase, alias);
  }
}

class PeopleVehicle extends DataClass implements Insertable<PeopleVehicle> {
  final int peopleId;
  final int vehicleId;
  const PeopleVehicle({required this.peopleId, required this.vehicleId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['people_id'] = Variable<int>(peopleId);
    map['vehicle_id'] = Variable<int>(vehicleId);
    return map;
  }

  PeopleVehiclesCompanion toCompanion(bool nullToAbsent) {
    return PeopleVehiclesCompanion(
      peopleId: Value(peopleId),
      vehicleId: Value(vehicleId),
    );
  }

  factory PeopleVehicle.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PeopleVehicle(
      peopleId: serializer.fromJson<int>(json['peopleId']),
      vehicleId: serializer.fromJson<int>(json['vehicleId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'peopleId': serializer.toJson<int>(peopleId),
      'vehicleId': serializer.toJson<int>(vehicleId),
    };
  }

  PeopleVehicle copyWith({int? peopleId, int? vehicleId}) => PeopleVehicle(
        peopleId: peopleId ?? this.peopleId,
        vehicleId: vehicleId ?? this.vehicleId,
      );
  PeopleVehicle copyWithCompanion(PeopleVehiclesCompanion data) {
    return PeopleVehicle(
      peopleId: data.peopleId.present ? data.peopleId.value : this.peopleId,
      vehicleId: data.vehicleId.present ? data.vehicleId.value : this.vehicleId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PeopleVehicle(')
          ..write('peopleId: $peopleId, ')
          ..write('vehicleId: $vehicleId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(peopleId, vehicleId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PeopleVehicle &&
          other.peopleId == this.peopleId &&
          other.vehicleId == this.vehicleId);
}

class PeopleVehiclesCompanion extends UpdateCompanion<PeopleVehicle> {
  final Value<int> peopleId;
  final Value<int> vehicleId;
  final Value<int> rowid;
  const PeopleVehiclesCompanion({
    this.peopleId = const Value.absent(),
    this.vehicleId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PeopleVehiclesCompanion.insert({
    required int peopleId,
    required int vehicleId,
    this.rowid = const Value.absent(),
  })  : peopleId = Value(peopleId),
        vehicleId = Value(vehicleId);
  static Insertable<PeopleVehicle> custom({
    Expression<int>? peopleId,
    Expression<int>? vehicleId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (peopleId != null) 'people_id': peopleId,
      if (vehicleId != null) 'vehicle_id': vehicleId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PeopleVehiclesCompanion copyWith(
      {Value<int>? peopleId, Value<int>? vehicleId, Value<int>? rowid}) {
    return PeopleVehiclesCompanion(
      peopleId: peopleId ?? this.peopleId,
      vehicleId: vehicleId ?? this.vehicleId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (peopleId.present) {
      map['people_id'] = Variable<int>(peopleId.value);
    }
    if (vehicleId.present) {
      map['vehicle_id'] = Variable<int>(vehicleId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PeopleVehiclesCompanion(')
          ..write('peopleId: $peopleId, ')
          ..write('vehicleId: $vehicleId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PeopleStarshipsTable extends PeopleStarships
    with TableInfo<$PeopleStarshipsTable, PeopleStarship> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PeopleStarshipsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _peopleIdMeta =
      const VerificationMeta('peopleId');
  @override
  late final GeneratedColumn<int> peopleId = GeneratedColumn<int>(
      'people_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES people (id)'));
  static const VerificationMeta _starshipIdMeta =
      const VerificationMeta('starshipId');
  @override
  late final GeneratedColumn<int> starshipId = GeneratedColumn<int>(
      'starship_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES starships (id)'));
  @override
  List<GeneratedColumn> get $columns => [peopleId, starshipId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'people_starships';
  @override
  VerificationContext validateIntegrity(Insertable<PeopleStarship> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('people_id')) {
      context.handle(_peopleIdMeta,
          peopleId.isAcceptableOrUnknown(data['people_id']!, _peopleIdMeta));
    } else if (isInserting) {
      context.missing(_peopleIdMeta);
    }
    if (data.containsKey('starship_id')) {
      context.handle(
          _starshipIdMeta,
          starshipId.isAcceptableOrUnknown(
              data['starship_id']!, _starshipIdMeta));
    } else if (isInserting) {
      context.missing(_starshipIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {peopleId, starshipId};
  @override
  PeopleStarship map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PeopleStarship(
      peopleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}people_id'])!,
      starshipId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}starship_id'])!,
    );
  }

  @override
  $PeopleStarshipsTable createAlias(String alias) {
    return $PeopleStarshipsTable(attachedDatabase, alias);
  }
}

class PeopleStarship extends DataClass implements Insertable<PeopleStarship> {
  final int peopleId;
  final int starshipId;
  const PeopleStarship({required this.peopleId, required this.starshipId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['people_id'] = Variable<int>(peopleId);
    map['starship_id'] = Variable<int>(starshipId);
    return map;
  }

  PeopleStarshipsCompanion toCompanion(bool nullToAbsent) {
    return PeopleStarshipsCompanion(
      peopleId: Value(peopleId),
      starshipId: Value(starshipId),
    );
  }

  factory PeopleStarship.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PeopleStarship(
      peopleId: serializer.fromJson<int>(json['peopleId']),
      starshipId: serializer.fromJson<int>(json['starshipId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'peopleId': serializer.toJson<int>(peopleId),
      'starshipId': serializer.toJson<int>(starshipId),
    };
  }

  PeopleStarship copyWith({int? peopleId, int? starshipId}) => PeopleStarship(
        peopleId: peopleId ?? this.peopleId,
        starshipId: starshipId ?? this.starshipId,
      );
  PeopleStarship copyWithCompanion(PeopleStarshipsCompanion data) {
    return PeopleStarship(
      peopleId: data.peopleId.present ? data.peopleId.value : this.peopleId,
      starshipId:
          data.starshipId.present ? data.starshipId.value : this.starshipId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PeopleStarship(')
          ..write('peopleId: $peopleId, ')
          ..write('starshipId: $starshipId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(peopleId, starshipId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PeopleStarship &&
          other.peopleId == this.peopleId &&
          other.starshipId == this.starshipId);
}

class PeopleStarshipsCompanion extends UpdateCompanion<PeopleStarship> {
  final Value<int> peopleId;
  final Value<int> starshipId;
  final Value<int> rowid;
  const PeopleStarshipsCompanion({
    this.peopleId = const Value.absent(),
    this.starshipId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PeopleStarshipsCompanion.insert({
    required int peopleId,
    required int starshipId,
    this.rowid = const Value.absent(),
  })  : peopleId = Value(peopleId),
        starshipId = Value(starshipId);
  static Insertable<PeopleStarship> custom({
    Expression<int>? peopleId,
    Expression<int>? starshipId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (peopleId != null) 'people_id': peopleId,
      if (starshipId != null) 'starship_id': starshipId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PeopleStarshipsCompanion copyWith(
      {Value<int>? peopleId, Value<int>? starshipId, Value<int>? rowid}) {
    return PeopleStarshipsCompanion(
      peopleId: peopleId ?? this.peopleId,
      starshipId: starshipId ?? this.starshipId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (peopleId.present) {
      map['people_id'] = Variable<int>(peopleId.value);
    }
    if (starshipId.present) {
      map['starship_id'] = Variable<int>(starshipId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PeopleStarshipsCompanion(')
          ..write('peopleId: $peopleId, ')
          ..write('starshipId: $starshipId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PlanetsTable planets = $PlanetsTable(this);
  late final $SpeciesTable species = $SpeciesTable(this);
  late final $PeopleTable people = $PeopleTable(this);
  late final $StarshipsTable starships = $StarshipsTable(this);
  late final $VehiclesTable vehicles = $VehiclesTable(this);
  late final $FilmsTable films = $FilmsTable(this);
  late final $VehiclesFilmsTable vehiclesFilms = $VehiclesFilmsTable(this);
  late final $StarshipsFilmsTable starshipsFilms = $StarshipsFilmsTable(this);
  late final $SpeciesFilmsTable speciesFilms = $SpeciesFilmsTable(this);
  late final $PlanetsFilmsTable planetsFilms = $PlanetsFilmsTable(this);
  late final $PlanetsPeopleTable planetsPeople = $PlanetsPeopleTable(this);
  late final $PeopleFilmsTable peopleFilms = $PeopleFilmsTable(this);
  late final $PeopleVehiclesTable peopleVehicles = $PeopleVehiclesTable(this);
  late final $PeopleStarshipsTable peopleStarships =
      $PeopleStarshipsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        planets,
        species,
        people,
        starships,
        vehicles,
        films,
        vehiclesFilms,
        starshipsFilms,
        speciesFilms,
        planetsFilms,
        planetsPeople,
        peopleFilms,
        peopleVehicles,
        peopleStarships
      ];
}

typedef $$PlanetsTableCreateCompanionBuilder = PlanetsCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> diameter,
  Value<String?> rotationPeriod,
  Value<String?> orbitalPeriod,
  Value<String?> gravity,
  Value<String?> population,
  Value<String?> climate,
  Value<String?> terrain,
  Value<String?> surfaceWater,
});
typedef $$PlanetsTableUpdateCompanionBuilder = PlanetsCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> diameter,
  Value<String?> rotationPeriod,
  Value<String?> orbitalPeriod,
  Value<String?> gravity,
  Value<String?> population,
  Value<String?> climate,
  Value<String?> terrain,
  Value<String?> surfaceWater,
});

final class $$PlanetsTableReferences
    extends BaseReferences<_$AppDatabase, $PlanetsTable, Planet> {
  $$PlanetsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SpeciesTable, List<Specy>> _speciesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.species,
          aliasName:
              $_aliasNameGenerator(db.planets.id, db.species.homeworldId));

  $$SpeciesTableProcessedTableManager get speciesRefs {
    final manager = $$SpeciesTableTableManager($_db, $_db.species)
        .filter((f) => f.homeworldId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_speciesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PeopleTable, List<PeopleData>> _peopleRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.people,
          aliasName:
              $_aliasNameGenerator(db.planets.id, db.people.homeWorldId));

  $$PeopleTableProcessedTableManager get peopleRefs {
    final manager = $$PeopleTableTableManager($_db, $_db.people)
        .filter((f) => f.homeWorldId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_peopleRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PlanetsFilmsTable, List<PlanetsFilm>>
      _planetsFilmsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.planetsFilms,
          aliasName:
              $_aliasNameGenerator(db.planets.id, db.planetsFilms.planetId));

  $$PlanetsFilmsTableProcessedTableManager get planetsFilmsRefs {
    final manager = $$PlanetsFilmsTableTableManager($_db, $_db.planetsFilms)
        .filter((f) => f.planetId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_planetsFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PlanetsPeopleTable, List<PlanetsPeopleData>>
      _planetsPeopleRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.planetsPeople,
              aliasName: $_aliasNameGenerator(
                  db.planets.id, db.planetsPeople.planetId));

  $$PlanetsPeopleTableProcessedTableManager get planetsPeopleRefs {
    final manager = $$PlanetsPeopleTableTableManager($_db, $_db.planetsPeople)
        .filter((f) => f.planetId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_planetsPeopleRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$PlanetsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PlanetsTable> {
  $$PlanetsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get diameter => $state.composableBuilder(
      column: $state.table.diameter,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get rotationPeriod => $state.composableBuilder(
      column: $state.table.rotationPeriod,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get orbitalPeriod => $state.composableBuilder(
      column: $state.table.orbitalPeriod,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get gravity => $state.composableBuilder(
      column: $state.table.gravity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get population => $state.composableBuilder(
      column: $state.table.population,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get climate => $state.composableBuilder(
      column: $state.table.climate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get terrain => $state.composableBuilder(
      column: $state.table.terrain,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get surfaceWater => $state.composableBuilder(
      column: $state.table.surfaceWater,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter speciesRefs(
      ComposableFilter Function($$SpeciesTableFilterComposer f) f) {
    final $$SpeciesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.species,
        getReferencedColumn: (t) => t.homeworldId,
        builder: (joinBuilder, parentComposers) => $$SpeciesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.species, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter peopleRefs(
      ComposableFilter Function($$PeopleTableFilterComposer f) f) {
    final $$PeopleTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.homeWorldId,
        builder: (joinBuilder, parentComposers) => $$PeopleTableFilterComposer(
            ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter planetsFilmsRefs(
      ComposableFilter Function($$PlanetsFilmsTableFilterComposer f) f) {
    final $$PlanetsFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.planetsFilms,
        getReferencedColumn: (t) => t.planetId,
        builder: (joinBuilder, parentComposers) =>
            $$PlanetsFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.planetsFilms, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter planetsPeopleRefs(
      ComposableFilter Function($$PlanetsPeopleTableFilterComposer f) f) {
    final $$PlanetsPeopleTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.planetsPeople,
        getReferencedColumn: (t) => t.planetId,
        builder: (joinBuilder, parentComposers) =>
            $$PlanetsPeopleTableFilterComposer(ComposerState($state.db,
                $state.db.planetsPeople, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$PlanetsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PlanetsTable> {
  $$PlanetsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get diameter => $state.composableBuilder(
      column: $state.table.diameter,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get rotationPeriod => $state.composableBuilder(
      column: $state.table.rotationPeriod,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get orbitalPeriod => $state.composableBuilder(
      column: $state.table.orbitalPeriod,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get gravity => $state.composableBuilder(
      column: $state.table.gravity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get population => $state.composableBuilder(
      column: $state.table.population,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get climate => $state.composableBuilder(
      column: $state.table.climate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get terrain => $state.composableBuilder(
      column: $state.table.terrain,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get surfaceWater => $state.composableBuilder(
      column: $state.table.surfaceWater,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$PlanetsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PlanetsTable,
    Planet,
    $$PlanetsTableFilterComposer,
    $$PlanetsTableOrderingComposer,
    $$PlanetsTableCreateCompanionBuilder,
    $$PlanetsTableUpdateCompanionBuilder,
    (Planet, $$PlanetsTableReferences),
    Planet,
    PrefetchHooks Function(
        {bool speciesRefs,
        bool peopleRefs,
        bool planetsFilmsRefs,
        bool planetsPeopleRefs})> {
  $$PlanetsTableTableManager(_$AppDatabase db, $PlanetsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PlanetsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PlanetsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> diameter = const Value.absent(),
            Value<String?> rotationPeriod = const Value.absent(),
            Value<String?> orbitalPeriod = const Value.absent(),
            Value<String?> gravity = const Value.absent(),
            Value<String?> population = const Value.absent(),
            Value<String?> climate = const Value.absent(),
            Value<String?> terrain = const Value.absent(),
            Value<String?> surfaceWater = const Value.absent(),
          }) =>
              PlanetsCompanion(
            id: id,
            name: name,
            diameter: diameter,
            rotationPeriod: rotationPeriod,
            orbitalPeriod: orbitalPeriod,
            gravity: gravity,
            population: population,
            climate: climate,
            terrain: terrain,
            surfaceWater: surfaceWater,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> diameter = const Value.absent(),
            Value<String?> rotationPeriod = const Value.absent(),
            Value<String?> orbitalPeriod = const Value.absent(),
            Value<String?> gravity = const Value.absent(),
            Value<String?> population = const Value.absent(),
            Value<String?> climate = const Value.absent(),
            Value<String?> terrain = const Value.absent(),
            Value<String?> surfaceWater = const Value.absent(),
          }) =>
              PlanetsCompanion.insert(
            id: id,
            name: name,
            diameter: diameter,
            rotationPeriod: rotationPeriod,
            orbitalPeriod: orbitalPeriod,
            gravity: gravity,
            population: population,
            climate: climate,
            terrain: terrain,
            surfaceWater: surfaceWater,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$PlanetsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {speciesRefs = false,
              peopleRefs = false,
              planetsFilmsRefs = false,
              planetsPeopleRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (speciesRefs) db.species,
                if (peopleRefs) db.people,
                if (planetsFilmsRefs) db.planetsFilms,
                if (planetsPeopleRefs) db.planetsPeople
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (speciesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$PlanetsTableReferences._speciesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PlanetsTableReferences(db, table, p0).speciesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.homeworldId == item.id),
                        typedResults: items),
                  if (peopleRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$PlanetsTableReferences._peopleRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PlanetsTableReferences(db, table, p0).peopleRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.homeWorldId == item.id),
                        typedResults: items),
                  if (planetsFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$PlanetsTableReferences._planetsFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PlanetsTableReferences(db, table, p0)
                                .planetsFilmsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.planetId == item.id),
                        typedResults: items),
                  if (planetsPeopleRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PlanetsTableReferences
                            ._planetsPeopleRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PlanetsTableReferences(db, table, p0)
                                .planetsPeopleRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.planetId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$PlanetsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PlanetsTable,
    Planet,
    $$PlanetsTableFilterComposer,
    $$PlanetsTableOrderingComposer,
    $$PlanetsTableCreateCompanionBuilder,
    $$PlanetsTableUpdateCompanionBuilder,
    (Planet, $$PlanetsTableReferences),
    Planet,
    PrefetchHooks Function(
        {bool speciesRefs,
        bool peopleRefs,
        bool planetsFilmsRefs,
        bool planetsPeopleRefs})>;
typedef $$SpeciesTableCreateCompanionBuilder = SpeciesCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> classification,
  Value<String?> designation,
  Value<String?> averageHeight,
  Value<String?> averageLifespan,
  Value<String?> eyeColors,
  Value<String?> hairColors,
  Value<String?> skinColors,
  Value<String?> language,
  Value<int?> homeworldId,
});
typedef $$SpeciesTableUpdateCompanionBuilder = SpeciesCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> classification,
  Value<String?> designation,
  Value<String?> averageHeight,
  Value<String?> averageLifespan,
  Value<String?> eyeColors,
  Value<String?> hairColors,
  Value<String?> skinColors,
  Value<String?> language,
  Value<int?> homeworldId,
});

final class $$SpeciesTableReferences
    extends BaseReferences<_$AppDatabase, $SpeciesTable, Specy> {
  $$SpeciesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PlanetsTable _homeworldIdTable(_$AppDatabase db) => db.planets
      .createAlias($_aliasNameGenerator(db.species.homeworldId, db.planets.id));

  $$PlanetsTableProcessedTableManager? get homeworldId {
    if ($_item.homeworldId == null) return null;
    final manager = $$PlanetsTableTableManager($_db, $_db.planets)
        .filter((f) => f.id($_item.homeworldId!));
    final item = $_typedResult.readTableOrNull(_homeworldIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$PeopleTable, List<PeopleData>> _peopleRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.people,
          aliasName: $_aliasNameGenerator(db.species.id, db.people.speciesId));

  $$PeopleTableProcessedTableManager get peopleRefs {
    final manager = $$PeopleTableTableManager($_db, $_db.people)
        .filter((f) => f.speciesId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_peopleRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$SpeciesFilmsTable, List<SpeciesFilm>>
      _speciesFilmsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.speciesFilms,
          aliasName:
              $_aliasNameGenerator(db.species.id, db.speciesFilms.speciesId));

  $$SpeciesFilmsTableProcessedTableManager get speciesFilmsRefs {
    final manager = $$SpeciesFilmsTableTableManager($_db, $_db.speciesFilms)
        .filter((f) => f.speciesId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_speciesFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SpeciesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SpeciesTable> {
  $$SpeciesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get classification => $state.composableBuilder(
      column: $state.table.classification,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get designation => $state.composableBuilder(
      column: $state.table.designation,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get averageHeight => $state.composableBuilder(
      column: $state.table.averageHeight,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get averageLifespan => $state.composableBuilder(
      column: $state.table.averageLifespan,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get eyeColors => $state.composableBuilder(
      column: $state.table.eyeColors,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get hairColors => $state.composableBuilder(
      column: $state.table.hairColors,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get skinColors => $state.composableBuilder(
      column: $state.table.skinColors,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$PlanetsTableFilterComposer get homeworldId {
    final $$PlanetsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.homeworldId,
        referencedTable: $state.db.planets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PlanetsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.planets, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter peopleRefs(
      ComposableFilter Function($$PeopleTableFilterComposer f) f) {
    final $$PeopleTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.speciesId,
        builder: (joinBuilder, parentComposers) => $$PeopleTableFilterComposer(
            ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter speciesFilmsRefs(
      ComposableFilter Function($$SpeciesFilmsTableFilterComposer f) f) {
    final $$SpeciesFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.speciesFilms,
        getReferencedColumn: (t) => t.speciesId,
        builder: (joinBuilder, parentComposers) =>
            $$SpeciesFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.speciesFilms, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$SpeciesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SpeciesTable> {
  $$SpeciesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get classification => $state.composableBuilder(
      column: $state.table.classification,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get designation => $state.composableBuilder(
      column: $state.table.designation,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get averageHeight => $state.composableBuilder(
      column: $state.table.averageHeight,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get averageLifespan => $state.composableBuilder(
      column: $state.table.averageLifespan,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get eyeColors => $state.composableBuilder(
      column: $state.table.eyeColors,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get hairColors => $state.composableBuilder(
      column: $state.table.hairColors,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get skinColors => $state.composableBuilder(
      column: $state.table.skinColors,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$PlanetsTableOrderingComposer get homeworldId {
    final $$PlanetsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.homeworldId,
        referencedTable: $state.db.planets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PlanetsTableOrderingComposer(ComposerState(
                $state.db, $state.db.planets, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SpeciesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SpeciesTable,
    Specy,
    $$SpeciesTableFilterComposer,
    $$SpeciesTableOrderingComposer,
    $$SpeciesTableCreateCompanionBuilder,
    $$SpeciesTableUpdateCompanionBuilder,
    (Specy, $$SpeciesTableReferences),
    Specy,
    PrefetchHooks Function(
        {bool homeworldId, bool peopleRefs, bool speciesFilmsRefs})> {
  $$SpeciesTableTableManager(_$AppDatabase db, $SpeciesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SpeciesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SpeciesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> classification = const Value.absent(),
            Value<String?> designation = const Value.absent(),
            Value<String?> averageHeight = const Value.absent(),
            Value<String?> averageLifespan = const Value.absent(),
            Value<String?> eyeColors = const Value.absent(),
            Value<String?> hairColors = const Value.absent(),
            Value<String?> skinColors = const Value.absent(),
            Value<String?> language = const Value.absent(),
            Value<int?> homeworldId = const Value.absent(),
          }) =>
              SpeciesCompanion(
            id: id,
            name: name,
            classification: classification,
            designation: designation,
            averageHeight: averageHeight,
            averageLifespan: averageLifespan,
            eyeColors: eyeColors,
            hairColors: hairColors,
            skinColors: skinColors,
            language: language,
            homeworldId: homeworldId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> classification = const Value.absent(),
            Value<String?> designation = const Value.absent(),
            Value<String?> averageHeight = const Value.absent(),
            Value<String?> averageLifespan = const Value.absent(),
            Value<String?> eyeColors = const Value.absent(),
            Value<String?> hairColors = const Value.absent(),
            Value<String?> skinColors = const Value.absent(),
            Value<String?> language = const Value.absent(),
            Value<int?> homeworldId = const Value.absent(),
          }) =>
              SpeciesCompanion.insert(
            id: id,
            name: name,
            classification: classification,
            designation: designation,
            averageHeight: averageHeight,
            averageLifespan: averageLifespan,
            eyeColors: eyeColors,
            hairColors: hairColors,
            skinColors: skinColors,
            language: language,
            homeworldId: homeworldId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$SpeciesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {homeworldId = false,
              peopleRefs = false,
              speciesFilmsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (peopleRefs) db.people,
                if (speciesFilmsRefs) db.speciesFilms
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (homeworldId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.homeworldId,
                    referencedTable:
                        $$SpeciesTableReferences._homeworldIdTable(db),
                    referencedColumn:
                        $$SpeciesTableReferences._homeworldIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (peopleRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$SpeciesTableReferences._peopleRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SpeciesTableReferences(db, table, p0).peopleRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.speciesId == item.id),
                        typedResults: items),
                  if (speciesFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$SpeciesTableReferences._speciesFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SpeciesTableReferences(db, table, p0)
                                .speciesFilmsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.speciesId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SpeciesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SpeciesTable,
    Specy,
    $$SpeciesTableFilterComposer,
    $$SpeciesTableOrderingComposer,
    $$SpeciesTableCreateCompanionBuilder,
    $$SpeciesTableUpdateCompanionBuilder,
    (Specy, $$SpeciesTableReferences),
    Specy,
    PrefetchHooks Function(
        {bool homeworldId, bool peopleRefs, bool speciesFilmsRefs})>;
typedef $$PeopleTableCreateCompanionBuilder = PeopleCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> birthYear,
  Value<String?> eyeColor,
  Value<String?> gender,
  Value<String?> hairColor,
  Value<int?> height,
  Value<int?> mass,
  Value<String?> skinColor,
  Value<int?> homeWorldId,
  Value<int?> speciesId,
});
typedef $$PeopleTableUpdateCompanionBuilder = PeopleCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> birthYear,
  Value<String?> eyeColor,
  Value<String?> gender,
  Value<String?> hairColor,
  Value<int?> height,
  Value<int?> mass,
  Value<String?> skinColor,
  Value<int?> homeWorldId,
  Value<int?> speciesId,
});

final class $$PeopleTableReferences
    extends BaseReferences<_$AppDatabase, $PeopleTable, PeopleData> {
  $$PeopleTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PlanetsTable _homeWorldIdTable(_$AppDatabase db) => db.planets
      .createAlias($_aliasNameGenerator(db.people.homeWorldId, db.planets.id));

  $$PlanetsTableProcessedTableManager? get homeWorldId {
    if ($_item.homeWorldId == null) return null;
    final manager = $$PlanetsTableTableManager($_db, $_db.planets)
        .filter((f) => f.id($_item.homeWorldId!));
    final item = $_typedResult.readTableOrNull(_homeWorldIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SpeciesTable _speciesIdTable(_$AppDatabase db) => db.species
      .createAlias($_aliasNameGenerator(db.people.speciesId, db.species.id));

  $$SpeciesTableProcessedTableManager? get speciesId {
    if ($_item.speciesId == null) return null;
    final manager = $$SpeciesTableTableManager($_db, $_db.species)
        .filter((f) => f.id($_item.speciesId!));
    final item = $_typedResult.readTableOrNull(_speciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$PlanetsPeopleTable, List<PlanetsPeopleData>>
      _planetsPeopleRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.planetsPeople,
              aliasName: $_aliasNameGenerator(
                  db.people.id, db.planetsPeople.peopleId));

  $$PlanetsPeopleTableProcessedTableManager get planetsPeopleRefs {
    final manager = $$PlanetsPeopleTableTableManager($_db, $_db.planetsPeople)
        .filter((f) => f.peopleId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_planetsPeopleRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PeopleFilmsTable, List<PeopleFilm>>
      _peopleFilmsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.peopleFilms,
              aliasName:
                  $_aliasNameGenerator(db.people.id, db.peopleFilms.peopleId));

  $$PeopleFilmsTableProcessedTableManager get peopleFilmsRefs {
    final manager = $$PeopleFilmsTableTableManager($_db, $_db.peopleFilms)
        .filter((f) => f.peopleId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_peopleFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PeopleVehiclesTable, List<PeopleVehicle>>
      _peopleVehiclesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.peopleVehicles,
              aliasName: $_aliasNameGenerator(
                  db.people.id, db.peopleVehicles.peopleId));

  $$PeopleVehiclesTableProcessedTableManager get peopleVehiclesRefs {
    final manager = $$PeopleVehiclesTableTableManager($_db, $_db.peopleVehicles)
        .filter((f) => f.peopleId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_peopleVehiclesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PeopleStarshipsTable, List<PeopleStarship>>
      _peopleStarshipsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.peopleStarships,
              aliasName: $_aliasNameGenerator(
                  db.people.id, db.peopleStarships.peopleId));

  $$PeopleStarshipsTableProcessedTableManager get peopleStarshipsRefs {
    final manager =
        $$PeopleStarshipsTableTableManager($_db, $_db.peopleStarships)
            .filter((f) => f.peopleId.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_peopleStarshipsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$PeopleTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PeopleTable> {
  $$PeopleTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get birthYear => $state.composableBuilder(
      column: $state.table.birthYear,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get eyeColor => $state.composableBuilder(
      column: $state.table.eyeColor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get gender => $state.composableBuilder(
      column: $state.table.gender,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get hairColor => $state.composableBuilder(
      column: $state.table.hairColor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get mass => $state.composableBuilder(
      column: $state.table.mass,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get skinColor => $state.composableBuilder(
      column: $state.table.skinColor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$PlanetsTableFilterComposer get homeWorldId {
    final $$PlanetsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.homeWorldId,
        referencedTable: $state.db.planets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PlanetsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.planets, joinBuilder, parentComposers)));
    return composer;
  }

  $$SpeciesTableFilterComposer get speciesId {
    final $$SpeciesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.speciesId,
        referencedTable: $state.db.species,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$SpeciesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.species, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter planetsPeopleRefs(
      ComposableFilter Function($$PlanetsPeopleTableFilterComposer f) f) {
    final $$PlanetsPeopleTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.planetsPeople,
        getReferencedColumn: (t) => t.peopleId,
        builder: (joinBuilder, parentComposers) =>
            $$PlanetsPeopleTableFilterComposer(ComposerState($state.db,
                $state.db.planetsPeople, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter peopleFilmsRefs(
      ComposableFilter Function($$PeopleFilmsTableFilterComposer f) f) {
    final $$PeopleFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.peopleFilms,
        getReferencedColumn: (t) => t.peopleId,
        builder: (joinBuilder, parentComposers) =>
            $$PeopleFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.peopleFilms, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter peopleVehiclesRefs(
      ComposableFilter Function($$PeopleVehiclesTableFilterComposer f) f) {
    final $$PeopleVehiclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.peopleVehicles,
        getReferencedColumn: (t) => t.peopleId,
        builder: (joinBuilder, parentComposers) =>
            $$PeopleVehiclesTableFilterComposer(ComposerState($state.db,
                $state.db.peopleVehicles, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter peopleStarshipsRefs(
      ComposableFilter Function($$PeopleStarshipsTableFilterComposer f) f) {
    final $$PeopleStarshipsTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.peopleStarships,
            getReferencedColumn: (t) => t.peopleId,
            builder: (joinBuilder, parentComposers) =>
                $$PeopleStarshipsTableFilterComposer(ComposerState($state.db,
                    $state.db.peopleStarships, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$PeopleTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PeopleTable> {
  $$PeopleTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get birthYear => $state.composableBuilder(
      column: $state.table.birthYear,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get eyeColor => $state.composableBuilder(
      column: $state.table.eyeColor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get gender => $state.composableBuilder(
      column: $state.table.gender,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get hairColor => $state.composableBuilder(
      column: $state.table.hairColor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get height => $state.composableBuilder(
      column: $state.table.height,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get mass => $state.composableBuilder(
      column: $state.table.mass,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get skinColor => $state.composableBuilder(
      column: $state.table.skinColor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$PlanetsTableOrderingComposer get homeWorldId {
    final $$PlanetsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.homeWorldId,
        referencedTable: $state.db.planets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PlanetsTableOrderingComposer(ComposerState(
                $state.db, $state.db.planets, joinBuilder, parentComposers)));
    return composer;
  }

  $$SpeciesTableOrderingComposer get speciesId {
    final $$SpeciesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.speciesId,
        referencedTable: $state.db.species,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SpeciesTableOrderingComposer(ComposerState(
                $state.db, $state.db.species, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PeopleTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PeopleTable,
    PeopleData,
    $$PeopleTableFilterComposer,
    $$PeopleTableOrderingComposer,
    $$PeopleTableCreateCompanionBuilder,
    $$PeopleTableUpdateCompanionBuilder,
    (PeopleData, $$PeopleTableReferences),
    PeopleData,
    PrefetchHooks Function(
        {bool homeWorldId,
        bool speciesId,
        bool planetsPeopleRefs,
        bool peopleFilmsRefs,
        bool peopleVehiclesRefs,
        bool peopleStarshipsRefs})> {
  $$PeopleTableTableManager(_$AppDatabase db, $PeopleTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PeopleTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PeopleTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> birthYear = const Value.absent(),
            Value<String?> eyeColor = const Value.absent(),
            Value<String?> gender = const Value.absent(),
            Value<String?> hairColor = const Value.absent(),
            Value<int?> height = const Value.absent(),
            Value<int?> mass = const Value.absent(),
            Value<String?> skinColor = const Value.absent(),
            Value<int?> homeWorldId = const Value.absent(),
            Value<int?> speciesId = const Value.absent(),
          }) =>
              PeopleCompanion(
            id: id,
            name: name,
            birthYear: birthYear,
            eyeColor: eyeColor,
            gender: gender,
            hairColor: hairColor,
            height: height,
            mass: mass,
            skinColor: skinColor,
            homeWorldId: homeWorldId,
            speciesId: speciesId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> birthYear = const Value.absent(),
            Value<String?> eyeColor = const Value.absent(),
            Value<String?> gender = const Value.absent(),
            Value<String?> hairColor = const Value.absent(),
            Value<int?> height = const Value.absent(),
            Value<int?> mass = const Value.absent(),
            Value<String?> skinColor = const Value.absent(),
            Value<int?> homeWorldId = const Value.absent(),
            Value<int?> speciesId = const Value.absent(),
          }) =>
              PeopleCompanion.insert(
            id: id,
            name: name,
            birthYear: birthYear,
            eyeColor: eyeColor,
            gender: gender,
            hairColor: hairColor,
            height: height,
            mass: mass,
            skinColor: skinColor,
            homeWorldId: homeWorldId,
            speciesId: speciesId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$PeopleTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {homeWorldId = false,
              speciesId = false,
              planetsPeopleRefs = false,
              peopleFilmsRefs = false,
              peopleVehiclesRefs = false,
              peopleStarshipsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (planetsPeopleRefs) db.planetsPeople,
                if (peopleFilmsRefs) db.peopleFilms,
                if (peopleVehiclesRefs) db.peopleVehicles,
                if (peopleStarshipsRefs) db.peopleStarships
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (homeWorldId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.homeWorldId,
                    referencedTable:
                        $$PeopleTableReferences._homeWorldIdTable(db),
                    referencedColumn:
                        $$PeopleTableReferences._homeWorldIdTable(db).id,
                  ) as T;
                }
                if (speciesId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.speciesId,
                    referencedTable:
                        $$PeopleTableReferences._speciesIdTable(db),
                    referencedColumn:
                        $$PeopleTableReferences._speciesIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (planetsPeopleRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$PeopleTableReferences._planetsPeopleRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PeopleTableReferences(db, table, p0)
                                .planetsPeopleRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.peopleId == item.id),
                        typedResults: items),
                  if (peopleFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$PeopleTableReferences._peopleFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PeopleTableReferences(db, table, p0)
                                .peopleFilmsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.peopleId == item.id),
                        typedResults: items),
                  if (peopleVehiclesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PeopleTableReferences
                            ._peopleVehiclesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PeopleTableReferences(db, table, p0)
                                .peopleVehiclesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.peopleId == item.id),
                        typedResults: items),
                  if (peopleStarshipsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PeopleTableReferences
                            ._peopleStarshipsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PeopleTableReferences(db, table, p0)
                                .peopleStarshipsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.peopleId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$PeopleTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PeopleTable,
    PeopleData,
    $$PeopleTableFilterComposer,
    $$PeopleTableOrderingComposer,
    $$PeopleTableCreateCompanionBuilder,
    $$PeopleTableUpdateCompanionBuilder,
    (PeopleData, $$PeopleTableReferences),
    PeopleData,
    PrefetchHooks Function(
        {bool homeWorldId,
        bool speciesId,
        bool planetsPeopleRefs,
        bool peopleFilmsRefs,
        bool peopleVehiclesRefs,
        bool peopleStarshipsRefs})>;
typedef $$StarshipsTableCreateCompanionBuilder = StarshipsCompanion Function({
  Value<int> id,
  required String name,
  required String model,
  required String starshipClass,
  required String manufacturer,
  required String length,
  required String costInCredits,
  required String crew,
  required String passengers,
  required String maxAtmospheringSpeed,
  required String hyperdriveRating,
  required String MGLT,
  required String cargoCapacity,
  required String consumables,
});
typedef $$StarshipsTableUpdateCompanionBuilder = StarshipsCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> model,
  Value<String> starshipClass,
  Value<String> manufacturer,
  Value<String> length,
  Value<String> costInCredits,
  Value<String> crew,
  Value<String> passengers,
  Value<String> maxAtmospheringSpeed,
  Value<String> hyperdriveRating,
  Value<String> MGLT,
  Value<String> cargoCapacity,
  Value<String> consumables,
});

final class $$StarshipsTableReferences
    extends BaseReferences<_$AppDatabase, $StarshipsTable, Starship> {
  $$StarshipsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$StarshipsFilmsTable, List<StarshipsFilm>>
      _starshipsFilmsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.starshipsFilms,
              aliasName: $_aliasNameGenerator(
                  db.starships.id, db.starshipsFilms.starshipId));

  $$StarshipsFilmsTableProcessedTableManager get starshipsFilmsRefs {
    final manager = $$StarshipsFilmsTableTableManager($_db, $_db.starshipsFilms)
        .filter((f) => f.starshipId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_starshipsFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PeopleStarshipsTable, List<PeopleStarship>>
      _peopleStarshipsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.peopleStarships,
              aliasName: $_aliasNameGenerator(
                  db.starships.id, db.peopleStarships.starshipId));

  $$PeopleStarshipsTableProcessedTableManager get peopleStarshipsRefs {
    final manager =
        $$PeopleStarshipsTableTableManager($_db, $_db.peopleStarships)
            .filter((f) => f.starshipId.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_peopleStarshipsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$StarshipsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $StarshipsTable> {
  $$StarshipsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get model => $state.composableBuilder(
      column: $state.table.model,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get starshipClass => $state.composableBuilder(
      column: $state.table.starshipClass,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get manufacturer => $state.composableBuilder(
      column: $state.table.manufacturer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get length => $state.composableBuilder(
      column: $state.table.length,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get costInCredits => $state.composableBuilder(
      column: $state.table.costInCredits,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get crew => $state.composableBuilder(
      column: $state.table.crew,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get passengers => $state.composableBuilder(
      column: $state.table.passengers,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get maxAtmospheringSpeed => $state.composableBuilder(
      column: $state.table.maxAtmospheringSpeed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get hyperdriveRating => $state.composableBuilder(
      column: $state.table.hyperdriveRating,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get MGLT => $state.composableBuilder(
      column: $state.table.MGLT,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cargoCapacity => $state.composableBuilder(
      column: $state.table.cargoCapacity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get consumables => $state.composableBuilder(
      column: $state.table.consumables,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter starshipsFilmsRefs(
      ComposableFilter Function($$StarshipsFilmsTableFilterComposer f) f) {
    final $$StarshipsFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.starshipsFilms,
        getReferencedColumn: (t) => t.starshipId,
        builder: (joinBuilder, parentComposers) =>
            $$StarshipsFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.starshipsFilms, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter peopleStarshipsRefs(
      ComposableFilter Function($$PeopleStarshipsTableFilterComposer f) f) {
    final $$PeopleStarshipsTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.peopleStarships,
            getReferencedColumn: (t) => t.starshipId,
            builder: (joinBuilder, parentComposers) =>
                $$PeopleStarshipsTableFilterComposer(ComposerState($state.db,
                    $state.db.peopleStarships, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$StarshipsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $StarshipsTable> {
  $$StarshipsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get model => $state.composableBuilder(
      column: $state.table.model,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get starshipClass => $state.composableBuilder(
      column: $state.table.starshipClass,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get manufacturer => $state.composableBuilder(
      column: $state.table.manufacturer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get length => $state.composableBuilder(
      column: $state.table.length,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get costInCredits => $state.composableBuilder(
      column: $state.table.costInCredits,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get crew => $state.composableBuilder(
      column: $state.table.crew,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get passengers => $state.composableBuilder(
      column: $state.table.passengers,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get maxAtmospheringSpeed => $state.composableBuilder(
      column: $state.table.maxAtmospheringSpeed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get hyperdriveRating => $state.composableBuilder(
      column: $state.table.hyperdriveRating,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get MGLT => $state.composableBuilder(
      column: $state.table.MGLT,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cargoCapacity => $state.composableBuilder(
      column: $state.table.cargoCapacity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get consumables => $state.composableBuilder(
      column: $state.table.consumables,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$StarshipsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StarshipsTable,
    Starship,
    $$StarshipsTableFilterComposer,
    $$StarshipsTableOrderingComposer,
    $$StarshipsTableCreateCompanionBuilder,
    $$StarshipsTableUpdateCompanionBuilder,
    (Starship, $$StarshipsTableReferences),
    Starship,
    PrefetchHooks Function(
        {bool starshipsFilmsRefs, bool peopleStarshipsRefs})> {
  $$StarshipsTableTableManager(_$AppDatabase db, $StarshipsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$StarshipsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$StarshipsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> model = const Value.absent(),
            Value<String> starshipClass = const Value.absent(),
            Value<String> manufacturer = const Value.absent(),
            Value<String> length = const Value.absent(),
            Value<String> costInCredits = const Value.absent(),
            Value<String> crew = const Value.absent(),
            Value<String> passengers = const Value.absent(),
            Value<String> maxAtmospheringSpeed = const Value.absent(),
            Value<String> hyperdriveRating = const Value.absent(),
            Value<String> MGLT = const Value.absent(),
            Value<String> cargoCapacity = const Value.absent(),
            Value<String> consumables = const Value.absent(),
          }) =>
              StarshipsCompanion(
            id: id,
            name: name,
            model: model,
            starshipClass: starshipClass,
            manufacturer: manufacturer,
            length: length,
            costInCredits: costInCredits,
            crew: crew,
            passengers: passengers,
            maxAtmospheringSpeed: maxAtmospheringSpeed,
            hyperdriveRating: hyperdriveRating,
            MGLT: MGLT,
            cargoCapacity: cargoCapacity,
            consumables: consumables,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String model,
            required String starshipClass,
            required String manufacturer,
            required String length,
            required String costInCredits,
            required String crew,
            required String passengers,
            required String maxAtmospheringSpeed,
            required String hyperdriveRating,
            required String MGLT,
            required String cargoCapacity,
            required String consumables,
          }) =>
              StarshipsCompanion.insert(
            id: id,
            name: name,
            model: model,
            starshipClass: starshipClass,
            manufacturer: manufacturer,
            length: length,
            costInCredits: costInCredits,
            crew: crew,
            passengers: passengers,
            maxAtmospheringSpeed: maxAtmospheringSpeed,
            hyperdriveRating: hyperdriveRating,
            MGLT: MGLT,
            cargoCapacity: cargoCapacity,
            consumables: consumables,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$StarshipsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {starshipsFilmsRefs = false, peopleStarshipsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (starshipsFilmsRefs) db.starshipsFilms,
                if (peopleStarshipsRefs) db.peopleStarships
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (starshipsFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$StarshipsTableReferences
                            ._starshipsFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StarshipsTableReferences(db, table, p0)
                                .starshipsFilmsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.starshipId == item.id),
                        typedResults: items),
                  if (peopleStarshipsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$StarshipsTableReferences
                            ._peopleStarshipsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StarshipsTableReferences(db, table, p0)
                                .peopleStarshipsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.starshipId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$StarshipsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StarshipsTable,
    Starship,
    $$StarshipsTableFilterComposer,
    $$StarshipsTableOrderingComposer,
    $$StarshipsTableCreateCompanionBuilder,
    $$StarshipsTableUpdateCompanionBuilder,
    (Starship, $$StarshipsTableReferences),
    Starship,
    PrefetchHooks Function(
        {bool starshipsFilmsRefs, bool peopleStarshipsRefs})>;
typedef $$VehiclesTableCreateCompanionBuilder = VehiclesCompanion Function({
  Value<int> id,
  required String name,
  required String model,
  required String vehicleClass,
  required String manufacturer,
  required String length,
  required String costInCredits,
  required String crew,
  required String passengers,
  required String maxAtmospheringSpeed,
  required String cargoCapacity,
  required String consumables,
});
typedef $$VehiclesTableUpdateCompanionBuilder = VehiclesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> model,
  Value<String> vehicleClass,
  Value<String> manufacturer,
  Value<String> length,
  Value<String> costInCredits,
  Value<String> crew,
  Value<String> passengers,
  Value<String> maxAtmospheringSpeed,
  Value<String> cargoCapacity,
  Value<String> consumables,
});

final class $$VehiclesTableReferences
    extends BaseReferences<_$AppDatabase, $VehiclesTable, Vehicle> {
  $$VehiclesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$VehiclesFilmsTable, List<VehiclesFilm>>
      _vehiclesFilmsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.vehiclesFilms,
              aliasName: $_aliasNameGenerator(
                  db.vehicles.id, db.vehiclesFilms.vehicleId));

  $$VehiclesFilmsTableProcessedTableManager get vehiclesFilmsRefs {
    final manager = $$VehiclesFilmsTableTableManager($_db, $_db.vehiclesFilms)
        .filter((f) => f.vehicleId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_vehiclesFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PeopleVehiclesTable, List<PeopleVehicle>>
      _peopleVehiclesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.peopleVehicles,
              aliasName: $_aliasNameGenerator(
                  db.vehicles.id, db.peopleVehicles.vehicleId));

  $$PeopleVehiclesTableProcessedTableManager get peopleVehiclesRefs {
    final manager = $$PeopleVehiclesTableTableManager($_db, $_db.peopleVehicles)
        .filter((f) => f.vehicleId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_peopleVehiclesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$VehiclesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $VehiclesTable> {
  $$VehiclesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get model => $state.composableBuilder(
      column: $state.table.model,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get vehicleClass => $state.composableBuilder(
      column: $state.table.vehicleClass,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get manufacturer => $state.composableBuilder(
      column: $state.table.manufacturer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get length => $state.composableBuilder(
      column: $state.table.length,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get costInCredits => $state.composableBuilder(
      column: $state.table.costInCredits,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get crew => $state.composableBuilder(
      column: $state.table.crew,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get passengers => $state.composableBuilder(
      column: $state.table.passengers,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get maxAtmospheringSpeed => $state.composableBuilder(
      column: $state.table.maxAtmospheringSpeed,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cargoCapacity => $state.composableBuilder(
      column: $state.table.cargoCapacity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get consumables => $state.composableBuilder(
      column: $state.table.consumables,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter vehiclesFilmsRefs(
      ComposableFilter Function($$VehiclesFilmsTableFilterComposer f) f) {
    final $$VehiclesFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.vehiclesFilms,
        getReferencedColumn: (t) => t.vehicleId,
        builder: (joinBuilder, parentComposers) =>
            $$VehiclesFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.vehiclesFilms, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter peopleVehiclesRefs(
      ComposableFilter Function($$PeopleVehiclesTableFilterComposer f) f) {
    final $$PeopleVehiclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.peopleVehicles,
        getReferencedColumn: (t) => t.vehicleId,
        builder: (joinBuilder, parentComposers) =>
            $$PeopleVehiclesTableFilterComposer(ComposerState($state.db,
                $state.db.peopleVehicles, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$VehiclesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $VehiclesTable> {
  $$VehiclesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get model => $state.composableBuilder(
      column: $state.table.model,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get vehicleClass => $state.composableBuilder(
      column: $state.table.vehicleClass,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get manufacturer => $state.composableBuilder(
      column: $state.table.manufacturer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get length => $state.composableBuilder(
      column: $state.table.length,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get costInCredits => $state.composableBuilder(
      column: $state.table.costInCredits,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get crew => $state.composableBuilder(
      column: $state.table.crew,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get passengers => $state.composableBuilder(
      column: $state.table.passengers,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get maxAtmospheringSpeed => $state.composableBuilder(
      column: $state.table.maxAtmospheringSpeed,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cargoCapacity => $state.composableBuilder(
      column: $state.table.cargoCapacity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get consumables => $state.composableBuilder(
      column: $state.table.consumables,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$VehiclesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $VehiclesTable,
    Vehicle,
    $$VehiclesTableFilterComposer,
    $$VehiclesTableOrderingComposer,
    $$VehiclesTableCreateCompanionBuilder,
    $$VehiclesTableUpdateCompanionBuilder,
    (Vehicle, $$VehiclesTableReferences),
    Vehicle,
    PrefetchHooks Function({bool vehiclesFilmsRefs, bool peopleVehiclesRefs})> {
  $$VehiclesTableTableManager(_$AppDatabase db, $VehiclesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$VehiclesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$VehiclesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> model = const Value.absent(),
            Value<String> vehicleClass = const Value.absent(),
            Value<String> manufacturer = const Value.absent(),
            Value<String> length = const Value.absent(),
            Value<String> costInCredits = const Value.absent(),
            Value<String> crew = const Value.absent(),
            Value<String> passengers = const Value.absent(),
            Value<String> maxAtmospheringSpeed = const Value.absent(),
            Value<String> cargoCapacity = const Value.absent(),
            Value<String> consumables = const Value.absent(),
          }) =>
              VehiclesCompanion(
            id: id,
            name: name,
            model: model,
            vehicleClass: vehicleClass,
            manufacturer: manufacturer,
            length: length,
            costInCredits: costInCredits,
            crew: crew,
            passengers: passengers,
            maxAtmospheringSpeed: maxAtmospheringSpeed,
            cargoCapacity: cargoCapacity,
            consumables: consumables,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String model,
            required String vehicleClass,
            required String manufacturer,
            required String length,
            required String costInCredits,
            required String crew,
            required String passengers,
            required String maxAtmospheringSpeed,
            required String cargoCapacity,
            required String consumables,
          }) =>
              VehiclesCompanion.insert(
            id: id,
            name: name,
            model: model,
            vehicleClass: vehicleClass,
            manufacturer: manufacturer,
            length: length,
            costInCredits: costInCredits,
            crew: crew,
            passengers: passengers,
            maxAtmospheringSpeed: maxAtmospheringSpeed,
            cargoCapacity: cargoCapacity,
            consumables: consumables,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$VehiclesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {vehiclesFilmsRefs = false, peopleVehiclesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (vehiclesFilmsRefs) db.vehiclesFilms,
                if (peopleVehiclesRefs) db.peopleVehicles
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (vehiclesFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$VehiclesTableReferences
                            ._vehiclesFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$VehiclesTableReferences(db, table, p0)
                                .vehiclesFilmsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.vehicleId == item.id),
                        typedResults: items),
                  if (peopleVehiclesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$VehiclesTableReferences
                            ._peopleVehiclesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$VehiclesTableReferences(db, table, p0)
                                .peopleVehiclesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.vehicleId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$VehiclesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $VehiclesTable,
    Vehicle,
    $$VehiclesTableFilterComposer,
    $$VehiclesTableOrderingComposer,
    $$VehiclesTableCreateCompanionBuilder,
    $$VehiclesTableUpdateCompanionBuilder,
    (Vehicle, $$VehiclesTableReferences),
    Vehicle,
    PrefetchHooks Function({bool vehiclesFilmsRefs, bool peopleVehiclesRefs})>;
typedef $$FilmsTableCreateCompanionBuilder = FilmsCompanion Function({
  Value<int> id,
  required String title,
  required int episodeId,
  required String openingCrawl,
  required String director,
  required String producer,
  required String releaseDate,
});
typedef $$FilmsTableUpdateCompanionBuilder = FilmsCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<int> episodeId,
  Value<String> openingCrawl,
  Value<String> director,
  Value<String> producer,
  Value<String> releaseDate,
});

final class $$FilmsTableReferences
    extends BaseReferences<_$AppDatabase, $FilmsTable, Film> {
  $$FilmsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$VehiclesFilmsTable, List<VehiclesFilm>>
      _vehiclesFilmsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.vehiclesFilms,
              aliasName:
                  $_aliasNameGenerator(db.films.id, db.vehiclesFilms.filmId));

  $$VehiclesFilmsTableProcessedTableManager get vehiclesFilmsRefs {
    final manager = $$VehiclesFilmsTableTableManager($_db, $_db.vehiclesFilms)
        .filter((f) => f.filmId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_vehiclesFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$StarshipsFilmsTable, List<StarshipsFilm>>
      _starshipsFilmsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.starshipsFilms,
              aliasName:
                  $_aliasNameGenerator(db.films.id, db.starshipsFilms.filmId));

  $$StarshipsFilmsTableProcessedTableManager get starshipsFilmsRefs {
    final manager = $$StarshipsFilmsTableTableManager($_db, $_db.starshipsFilms)
        .filter((f) => f.filmId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_starshipsFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$SpeciesFilmsTable, List<SpeciesFilm>>
      _speciesFilmsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.speciesFilms,
          aliasName: $_aliasNameGenerator(db.films.id, db.speciesFilms.filmId));

  $$SpeciesFilmsTableProcessedTableManager get speciesFilmsRefs {
    final manager = $$SpeciesFilmsTableTableManager($_db, $_db.speciesFilms)
        .filter((f) => f.filmId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_speciesFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PlanetsFilmsTable, List<PlanetsFilm>>
      _planetsFilmsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.planetsFilms,
          aliasName: $_aliasNameGenerator(db.films.id, db.planetsFilms.filmId));

  $$PlanetsFilmsTableProcessedTableManager get planetsFilmsRefs {
    final manager = $$PlanetsFilmsTableTableManager($_db, $_db.planetsFilms)
        .filter((f) => f.filmId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_planetsFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PeopleFilmsTable, List<PeopleFilm>>
      _peopleFilmsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.peopleFilms,
          aliasName: $_aliasNameGenerator(db.films.id, db.peopleFilms.filmId));

  $$PeopleFilmsTableProcessedTableManager get peopleFilmsRefs {
    final manager = $$PeopleFilmsTableTableManager($_db, $_db.peopleFilms)
        .filter((f) => f.filmId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_peopleFilmsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$FilmsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $FilmsTable> {
  $$FilmsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get episodeId => $state.composableBuilder(
      column: $state.table.episodeId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get openingCrawl => $state.composableBuilder(
      column: $state.table.openingCrawl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get director => $state.composableBuilder(
      column: $state.table.director,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get producer => $state.composableBuilder(
      column: $state.table.producer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get releaseDate => $state.composableBuilder(
      column: $state.table.releaseDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter vehiclesFilmsRefs(
      ComposableFilter Function($$VehiclesFilmsTableFilterComposer f) f) {
    final $$VehiclesFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.vehiclesFilms,
        getReferencedColumn: (t) => t.filmId,
        builder: (joinBuilder, parentComposers) =>
            $$VehiclesFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.vehiclesFilms, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter starshipsFilmsRefs(
      ComposableFilter Function($$StarshipsFilmsTableFilterComposer f) f) {
    final $$StarshipsFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.starshipsFilms,
        getReferencedColumn: (t) => t.filmId,
        builder: (joinBuilder, parentComposers) =>
            $$StarshipsFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.starshipsFilms, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter speciesFilmsRefs(
      ComposableFilter Function($$SpeciesFilmsTableFilterComposer f) f) {
    final $$SpeciesFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.speciesFilms,
        getReferencedColumn: (t) => t.filmId,
        builder: (joinBuilder, parentComposers) =>
            $$SpeciesFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.speciesFilms, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter planetsFilmsRefs(
      ComposableFilter Function($$PlanetsFilmsTableFilterComposer f) f) {
    final $$PlanetsFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.planetsFilms,
        getReferencedColumn: (t) => t.filmId,
        builder: (joinBuilder, parentComposers) =>
            $$PlanetsFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.planetsFilms, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter peopleFilmsRefs(
      ComposableFilter Function($$PeopleFilmsTableFilterComposer f) f) {
    final $$PeopleFilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.peopleFilms,
        getReferencedColumn: (t) => t.filmId,
        builder: (joinBuilder, parentComposers) =>
            $$PeopleFilmsTableFilterComposer(ComposerState($state.db,
                $state.db.peopleFilms, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$FilmsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $FilmsTable> {
  $$FilmsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get episodeId => $state.composableBuilder(
      column: $state.table.episodeId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get openingCrawl => $state.composableBuilder(
      column: $state.table.openingCrawl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get director => $state.composableBuilder(
      column: $state.table.director,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get producer => $state.composableBuilder(
      column: $state.table.producer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get releaseDate => $state.composableBuilder(
      column: $state.table.releaseDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$FilmsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FilmsTable,
    Film,
    $$FilmsTableFilterComposer,
    $$FilmsTableOrderingComposer,
    $$FilmsTableCreateCompanionBuilder,
    $$FilmsTableUpdateCompanionBuilder,
    (Film, $$FilmsTableReferences),
    Film,
    PrefetchHooks Function(
        {bool vehiclesFilmsRefs,
        bool starshipsFilmsRefs,
        bool speciesFilmsRefs,
        bool planetsFilmsRefs,
        bool peopleFilmsRefs})> {
  $$FilmsTableTableManager(_$AppDatabase db, $FilmsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FilmsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FilmsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<int> episodeId = const Value.absent(),
            Value<String> openingCrawl = const Value.absent(),
            Value<String> director = const Value.absent(),
            Value<String> producer = const Value.absent(),
            Value<String> releaseDate = const Value.absent(),
          }) =>
              FilmsCompanion(
            id: id,
            title: title,
            episodeId: episodeId,
            openingCrawl: openingCrawl,
            director: director,
            producer: producer,
            releaseDate: releaseDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required int episodeId,
            required String openingCrawl,
            required String director,
            required String producer,
            required String releaseDate,
          }) =>
              FilmsCompanion.insert(
            id: id,
            title: title,
            episodeId: episodeId,
            openingCrawl: openingCrawl,
            director: director,
            producer: producer,
            releaseDate: releaseDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$FilmsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {vehiclesFilmsRefs = false,
              starshipsFilmsRefs = false,
              speciesFilmsRefs = false,
              planetsFilmsRefs = false,
              peopleFilmsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (vehiclesFilmsRefs) db.vehiclesFilms,
                if (starshipsFilmsRefs) db.starshipsFilms,
                if (speciesFilmsRefs) db.speciesFilms,
                if (planetsFilmsRefs) db.planetsFilms,
                if (peopleFilmsRefs) db.peopleFilms
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (vehiclesFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$FilmsTableReferences._vehiclesFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$FilmsTableReferences(db, table, p0)
                                .vehiclesFilmsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.filmId == item.id),
                        typedResults: items),
                  if (starshipsFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$FilmsTableReferences._starshipsFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$FilmsTableReferences(db, table, p0)
                                .starshipsFilmsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.filmId == item.id),
                        typedResults: items),
                  if (speciesFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$FilmsTableReferences._speciesFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$FilmsTableReferences(db, table, p0)
                                .speciesFilmsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.filmId == item.id),
                        typedResults: items),
                  if (planetsFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$FilmsTableReferences._planetsFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$FilmsTableReferences(db, table, p0)
                                .planetsFilmsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.filmId == item.id),
                        typedResults: items),
                  if (peopleFilmsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$FilmsTableReferences._peopleFilmsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$FilmsTableReferences(db, table, p0)
                                .peopleFilmsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.filmId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$FilmsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FilmsTable,
    Film,
    $$FilmsTableFilterComposer,
    $$FilmsTableOrderingComposer,
    $$FilmsTableCreateCompanionBuilder,
    $$FilmsTableUpdateCompanionBuilder,
    (Film, $$FilmsTableReferences),
    Film,
    PrefetchHooks Function(
        {bool vehiclesFilmsRefs,
        bool starshipsFilmsRefs,
        bool speciesFilmsRefs,
        bool planetsFilmsRefs,
        bool peopleFilmsRefs})>;
typedef $$VehiclesFilmsTableCreateCompanionBuilder = VehiclesFilmsCompanion
    Function({
  required int vehicleId,
  required int filmId,
  Value<int> rowid,
});
typedef $$VehiclesFilmsTableUpdateCompanionBuilder = VehiclesFilmsCompanion
    Function({
  Value<int> vehicleId,
  Value<int> filmId,
  Value<int> rowid,
});

final class $$VehiclesFilmsTableReferences
    extends BaseReferences<_$AppDatabase, $VehiclesFilmsTable, VehiclesFilm> {
  $$VehiclesFilmsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $VehiclesTable _vehicleIdTable(_$AppDatabase db) =>
      db.vehicles.createAlias(
          $_aliasNameGenerator(db.vehiclesFilms.vehicleId, db.vehicles.id));

  $$VehiclesTableProcessedTableManager? get vehicleId {
    if ($_item.vehicleId == null) return null;
    final manager = $$VehiclesTableTableManager($_db, $_db.vehicles)
        .filter((f) => f.id($_item.vehicleId!));
    final item = $_typedResult.readTableOrNull(_vehicleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $FilmsTable _filmIdTable(_$AppDatabase db) => db.films
      .createAlias($_aliasNameGenerator(db.vehiclesFilms.filmId, db.films.id));

  $$FilmsTableProcessedTableManager? get filmId {
    if ($_item.filmId == null) return null;
    final manager = $$FilmsTableTableManager($_db, $_db.films)
        .filter((f) => f.id($_item.filmId!));
    final item = $_typedResult.readTableOrNull(_filmIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$VehiclesFilmsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $VehiclesFilmsTable> {
  $$VehiclesFilmsTableFilterComposer(super.$state);
  $$VehiclesTableFilterComposer get vehicleId {
    final $$VehiclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vehicleId,
        referencedTable: $state.db.vehicles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$VehiclesTableFilterComposer(ComposerState(
                $state.db, $state.db.vehicles, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableFilterComposer get filmId {
    final $$FilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$VehiclesFilmsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $VehiclesFilmsTable> {
  $$VehiclesFilmsTableOrderingComposer(super.$state);
  $$VehiclesTableOrderingComposer get vehicleId {
    final $$VehiclesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vehicleId,
        referencedTable: $state.db.vehicles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$VehiclesTableOrderingComposer(ComposerState(
                $state.db, $state.db.vehicles, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableOrderingComposer get filmId {
    final $$FilmsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$VehiclesFilmsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $VehiclesFilmsTable,
    VehiclesFilm,
    $$VehiclesFilmsTableFilterComposer,
    $$VehiclesFilmsTableOrderingComposer,
    $$VehiclesFilmsTableCreateCompanionBuilder,
    $$VehiclesFilmsTableUpdateCompanionBuilder,
    (VehiclesFilm, $$VehiclesFilmsTableReferences),
    VehiclesFilm,
    PrefetchHooks Function({bool vehicleId, bool filmId})> {
  $$VehiclesFilmsTableTableManager(_$AppDatabase db, $VehiclesFilmsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$VehiclesFilmsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$VehiclesFilmsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> vehicleId = const Value.absent(),
            Value<int> filmId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              VehiclesFilmsCompanion(
            vehicleId: vehicleId,
            filmId: filmId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int vehicleId,
            required int filmId,
            Value<int> rowid = const Value.absent(),
          }) =>
              VehiclesFilmsCompanion.insert(
            vehicleId: vehicleId,
            filmId: filmId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$VehiclesFilmsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({vehicleId = false, filmId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (vehicleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.vehicleId,
                    referencedTable:
                        $$VehiclesFilmsTableReferences._vehicleIdTable(db),
                    referencedColumn:
                        $$VehiclesFilmsTableReferences._vehicleIdTable(db).id,
                  ) as T;
                }
                if (filmId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.filmId,
                    referencedTable:
                        $$VehiclesFilmsTableReferences._filmIdTable(db),
                    referencedColumn:
                        $$VehiclesFilmsTableReferences._filmIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$VehiclesFilmsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $VehiclesFilmsTable,
    VehiclesFilm,
    $$VehiclesFilmsTableFilterComposer,
    $$VehiclesFilmsTableOrderingComposer,
    $$VehiclesFilmsTableCreateCompanionBuilder,
    $$VehiclesFilmsTableUpdateCompanionBuilder,
    (VehiclesFilm, $$VehiclesFilmsTableReferences),
    VehiclesFilm,
    PrefetchHooks Function({bool vehicleId, bool filmId})>;
typedef $$StarshipsFilmsTableCreateCompanionBuilder = StarshipsFilmsCompanion
    Function({
  required int starshipId,
  required int filmId,
  Value<int> rowid,
});
typedef $$StarshipsFilmsTableUpdateCompanionBuilder = StarshipsFilmsCompanion
    Function({
  Value<int> starshipId,
  Value<int> filmId,
  Value<int> rowid,
});

final class $$StarshipsFilmsTableReferences
    extends BaseReferences<_$AppDatabase, $StarshipsFilmsTable, StarshipsFilm> {
  $$StarshipsFilmsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $StarshipsTable _starshipIdTable(_$AppDatabase db) =>
      db.starships.createAlias(
          $_aliasNameGenerator(db.starshipsFilms.starshipId, db.starships.id));

  $$StarshipsTableProcessedTableManager? get starshipId {
    if ($_item.starshipId == null) return null;
    final manager = $$StarshipsTableTableManager($_db, $_db.starships)
        .filter((f) => f.id($_item.starshipId!));
    final item = $_typedResult.readTableOrNull(_starshipIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $FilmsTable _filmIdTable(_$AppDatabase db) => db.films
      .createAlias($_aliasNameGenerator(db.starshipsFilms.filmId, db.films.id));

  $$FilmsTableProcessedTableManager? get filmId {
    if ($_item.filmId == null) return null;
    final manager = $$FilmsTableTableManager($_db, $_db.films)
        .filter((f) => f.id($_item.filmId!));
    final item = $_typedResult.readTableOrNull(_filmIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$StarshipsFilmsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $StarshipsFilmsTable> {
  $$StarshipsFilmsTableFilterComposer(super.$state);
  $$StarshipsTableFilterComposer get starshipId {
    final $$StarshipsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.starshipId,
        referencedTable: $state.db.starships,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$StarshipsTableFilterComposer(ComposerState(
                $state.db, $state.db.starships, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableFilterComposer get filmId {
    final $$FilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$StarshipsFilmsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $StarshipsFilmsTable> {
  $$StarshipsFilmsTableOrderingComposer(super.$state);
  $$StarshipsTableOrderingComposer get starshipId {
    final $$StarshipsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.starshipId,
        referencedTable: $state.db.starships,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$StarshipsTableOrderingComposer(ComposerState(
                $state.db, $state.db.starships, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableOrderingComposer get filmId {
    final $$FilmsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$StarshipsFilmsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StarshipsFilmsTable,
    StarshipsFilm,
    $$StarshipsFilmsTableFilterComposer,
    $$StarshipsFilmsTableOrderingComposer,
    $$StarshipsFilmsTableCreateCompanionBuilder,
    $$StarshipsFilmsTableUpdateCompanionBuilder,
    (StarshipsFilm, $$StarshipsFilmsTableReferences),
    StarshipsFilm,
    PrefetchHooks Function({bool starshipId, bool filmId})> {
  $$StarshipsFilmsTableTableManager(
      _$AppDatabase db, $StarshipsFilmsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$StarshipsFilmsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$StarshipsFilmsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> starshipId = const Value.absent(),
            Value<int> filmId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              StarshipsFilmsCompanion(
            starshipId: starshipId,
            filmId: filmId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int starshipId,
            required int filmId,
            Value<int> rowid = const Value.absent(),
          }) =>
              StarshipsFilmsCompanion.insert(
            starshipId: starshipId,
            filmId: filmId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$StarshipsFilmsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({starshipId = false, filmId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (starshipId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.starshipId,
                    referencedTable:
                        $$StarshipsFilmsTableReferences._starshipIdTable(db),
                    referencedColumn:
                        $$StarshipsFilmsTableReferences._starshipIdTable(db).id,
                  ) as T;
                }
                if (filmId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.filmId,
                    referencedTable:
                        $$StarshipsFilmsTableReferences._filmIdTable(db),
                    referencedColumn:
                        $$StarshipsFilmsTableReferences._filmIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$StarshipsFilmsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StarshipsFilmsTable,
    StarshipsFilm,
    $$StarshipsFilmsTableFilterComposer,
    $$StarshipsFilmsTableOrderingComposer,
    $$StarshipsFilmsTableCreateCompanionBuilder,
    $$StarshipsFilmsTableUpdateCompanionBuilder,
    (StarshipsFilm, $$StarshipsFilmsTableReferences),
    StarshipsFilm,
    PrefetchHooks Function({bool starshipId, bool filmId})>;
typedef $$SpeciesFilmsTableCreateCompanionBuilder = SpeciesFilmsCompanion
    Function({
  required int speciesId,
  required int filmId,
  Value<int> rowid,
});
typedef $$SpeciesFilmsTableUpdateCompanionBuilder = SpeciesFilmsCompanion
    Function({
  Value<int> speciesId,
  Value<int> filmId,
  Value<int> rowid,
});

final class $$SpeciesFilmsTableReferences
    extends BaseReferences<_$AppDatabase, $SpeciesFilmsTable, SpeciesFilm> {
  $$SpeciesFilmsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SpeciesTable _speciesIdTable(_$AppDatabase db) =>
      db.species.createAlias(
          $_aliasNameGenerator(db.speciesFilms.speciesId, db.species.id));

  $$SpeciesTableProcessedTableManager? get speciesId {
    if ($_item.speciesId == null) return null;
    final manager = $$SpeciesTableTableManager($_db, $_db.species)
        .filter((f) => f.id($_item.speciesId!));
    final item = $_typedResult.readTableOrNull(_speciesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $FilmsTable _filmIdTable(_$AppDatabase db) => db.films
      .createAlias($_aliasNameGenerator(db.speciesFilms.filmId, db.films.id));

  $$FilmsTableProcessedTableManager? get filmId {
    if ($_item.filmId == null) return null;
    final manager = $$FilmsTableTableManager($_db, $_db.films)
        .filter((f) => f.id($_item.filmId!));
    final item = $_typedResult.readTableOrNull(_filmIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$SpeciesFilmsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SpeciesFilmsTable> {
  $$SpeciesFilmsTableFilterComposer(super.$state);
  $$SpeciesTableFilterComposer get speciesId {
    final $$SpeciesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.speciesId,
        referencedTable: $state.db.species,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$SpeciesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.species, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableFilterComposer get filmId {
    final $$FilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SpeciesFilmsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SpeciesFilmsTable> {
  $$SpeciesFilmsTableOrderingComposer(super.$state);
  $$SpeciesTableOrderingComposer get speciesId {
    final $$SpeciesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.speciesId,
        referencedTable: $state.db.species,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SpeciesTableOrderingComposer(ComposerState(
                $state.db, $state.db.species, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableOrderingComposer get filmId {
    final $$FilmsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SpeciesFilmsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SpeciesFilmsTable,
    SpeciesFilm,
    $$SpeciesFilmsTableFilterComposer,
    $$SpeciesFilmsTableOrderingComposer,
    $$SpeciesFilmsTableCreateCompanionBuilder,
    $$SpeciesFilmsTableUpdateCompanionBuilder,
    (SpeciesFilm, $$SpeciesFilmsTableReferences),
    SpeciesFilm,
    PrefetchHooks Function({bool speciesId, bool filmId})> {
  $$SpeciesFilmsTableTableManager(_$AppDatabase db, $SpeciesFilmsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SpeciesFilmsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SpeciesFilmsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> speciesId = const Value.absent(),
            Value<int> filmId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SpeciesFilmsCompanion(
            speciesId: speciesId,
            filmId: filmId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int speciesId,
            required int filmId,
            Value<int> rowid = const Value.absent(),
          }) =>
              SpeciesFilmsCompanion.insert(
            speciesId: speciesId,
            filmId: filmId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SpeciesFilmsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({speciesId = false, filmId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (speciesId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.speciesId,
                    referencedTable:
                        $$SpeciesFilmsTableReferences._speciesIdTable(db),
                    referencedColumn:
                        $$SpeciesFilmsTableReferences._speciesIdTable(db).id,
                  ) as T;
                }
                if (filmId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.filmId,
                    referencedTable:
                        $$SpeciesFilmsTableReferences._filmIdTable(db),
                    referencedColumn:
                        $$SpeciesFilmsTableReferences._filmIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$SpeciesFilmsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SpeciesFilmsTable,
    SpeciesFilm,
    $$SpeciesFilmsTableFilterComposer,
    $$SpeciesFilmsTableOrderingComposer,
    $$SpeciesFilmsTableCreateCompanionBuilder,
    $$SpeciesFilmsTableUpdateCompanionBuilder,
    (SpeciesFilm, $$SpeciesFilmsTableReferences),
    SpeciesFilm,
    PrefetchHooks Function({bool speciesId, bool filmId})>;
typedef $$PlanetsFilmsTableCreateCompanionBuilder = PlanetsFilmsCompanion
    Function({
  required int planetId,
  required int filmId,
  Value<int> rowid,
});
typedef $$PlanetsFilmsTableUpdateCompanionBuilder = PlanetsFilmsCompanion
    Function({
  Value<int> planetId,
  Value<int> filmId,
  Value<int> rowid,
});

final class $$PlanetsFilmsTableReferences
    extends BaseReferences<_$AppDatabase, $PlanetsFilmsTable, PlanetsFilm> {
  $$PlanetsFilmsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PlanetsTable _planetIdTable(_$AppDatabase db) =>
      db.planets.createAlias(
          $_aliasNameGenerator(db.planetsFilms.planetId, db.planets.id));

  $$PlanetsTableProcessedTableManager? get planetId {
    if ($_item.planetId == null) return null;
    final manager = $$PlanetsTableTableManager($_db, $_db.planets)
        .filter((f) => f.id($_item.planetId!));
    final item = $_typedResult.readTableOrNull(_planetIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $FilmsTable _filmIdTable(_$AppDatabase db) => db.films
      .createAlias($_aliasNameGenerator(db.planetsFilms.filmId, db.films.id));

  $$FilmsTableProcessedTableManager? get filmId {
    if ($_item.filmId == null) return null;
    final manager = $$FilmsTableTableManager($_db, $_db.films)
        .filter((f) => f.id($_item.filmId!));
    final item = $_typedResult.readTableOrNull(_filmIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PlanetsFilmsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PlanetsFilmsTable> {
  $$PlanetsFilmsTableFilterComposer(super.$state);
  $$PlanetsTableFilterComposer get planetId {
    final $$PlanetsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.planetId,
        referencedTable: $state.db.planets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PlanetsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.planets, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableFilterComposer get filmId {
    final $$FilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PlanetsFilmsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PlanetsFilmsTable> {
  $$PlanetsFilmsTableOrderingComposer(super.$state);
  $$PlanetsTableOrderingComposer get planetId {
    final $$PlanetsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.planetId,
        referencedTable: $state.db.planets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PlanetsTableOrderingComposer(ComposerState(
                $state.db, $state.db.planets, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableOrderingComposer get filmId {
    final $$FilmsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PlanetsFilmsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PlanetsFilmsTable,
    PlanetsFilm,
    $$PlanetsFilmsTableFilterComposer,
    $$PlanetsFilmsTableOrderingComposer,
    $$PlanetsFilmsTableCreateCompanionBuilder,
    $$PlanetsFilmsTableUpdateCompanionBuilder,
    (PlanetsFilm, $$PlanetsFilmsTableReferences),
    PlanetsFilm,
    PrefetchHooks Function({bool planetId, bool filmId})> {
  $$PlanetsFilmsTableTableManager(_$AppDatabase db, $PlanetsFilmsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PlanetsFilmsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PlanetsFilmsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> planetId = const Value.absent(),
            Value<int> filmId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PlanetsFilmsCompanion(
            planetId: planetId,
            filmId: filmId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int planetId,
            required int filmId,
            Value<int> rowid = const Value.absent(),
          }) =>
              PlanetsFilmsCompanion.insert(
            planetId: planetId,
            filmId: filmId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PlanetsFilmsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({planetId = false, filmId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (planetId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.planetId,
                    referencedTable:
                        $$PlanetsFilmsTableReferences._planetIdTable(db),
                    referencedColumn:
                        $$PlanetsFilmsTableReferences._planetIdTable(db).id,
                  ) as T;
                }
                if (filmId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.filmId,
                    referencedTable:
                        $$PlanetsFilmsTableReferences._filmIdTable(db),
                    referencedColumn:
                        $$PlanetsFilmsTableReferences._filmIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PlanetsFilmsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PlanetsFilmsTable,
    PlanetsFilm,
    $$PlanetsFilmsTableFilterComposer,
    $$PlanetsFilmsTableOrderingComposer,
    $$PlanetsFilmsTableCreateCompanionBuilder,
    $$PlanetsFilmsTableUpdateCompanionBuilder,
    (PlanetsFilm, $$PlanetsFilmsTableReferences),
    PlanetsFilm,
    PrefetchHooks Function({bool planetId, bool filmId})>;
typedef $$PlanetsPeopleTableCreateCompanionBuilder = PlanetsPeopleCompanion
    Function({
  required int planetId,
  required int peopleId,
  Value<int> rowid,
});
typedef $$PlanetsPeopleTableUpdateCompanionBuilder = PlanetsPeopleCompanion
    Function({
  Value<int> planetId,
  Value<int> peopleId,
  Value<int> rowid,
});

final class $$PlanetsPeopleTableReferences extends BaseReferences<_$AppDatabase,
    $PlanetsPeopleTable, PlanetsPeopleData> {
  $$PlanetsPeopleTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $PlanetsTable _planetIdTable(_$AppDatabase db) =>
      db.planets.createAlias(
          $_aliasNameGenerator(db.planetsPeople.planetId, db.planets.id));

  $$PlanetsTableProcessedTableManager? get planetId {
    if ($_item.planetId == null) return null;
    final manager = $$PlanetsTableTableManager($_db, $_db.planets)
        .filter((f) => f.id($_item.planetId!));
    final item = $_typedResult.readTableOrNull(_planetIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $PeopleTable _peopleIdTable(_$AppDatabase db) => db.people.createAlias(
      $_aliasNameGenerator(db.planetsPeople.peopleId, db.people.id));

  $$PeopleTableProcessedTableManager? get peopleId {
    if ($_item.peopleId == null) return null;
    final manager = $$PeopleTableTableManager($_db, $_db.people)
        .filter((f) => f.id($_item.peopleId!));
    final item = $_typedResult.readTableOrNull(_peopleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PlanetsPeopleTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PlanetsPeopleTable> {
  $$PlanetsPeopleTableFilterComposer(super.$state);
  $$PlanetsTableFilterComposer get planetId {
    final $$PlanetsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.planetId,
        referencedTable: $state.db.planets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PlanetsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.planets, joinBuilder, parentComposers)));
    return composer;
  }

  $$PeopleTableFilterComposer get peopleId {
    final $$PeopleTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.peopleId,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PeopleTableFilterComposer(
            ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PlanetsPeopleTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PlanetsPeopleTable> {
  $$PlanetsPeopleTableOrderingComposer(super.$state);
  $$PlanetsTableOrderingComposer get planetId {
    final $$PlanetsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.planetId,
        referencedTable: $state.db.planets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PlanetsTableOrderingComposer(ComposerState(
                $state.db, $state.db.planets, joinBuilder, parentComposers)));
    return composer;
  }

  $$PeopleTableOrderingComposer get peopleId {
    final $$PeopleTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.peopleId,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PeopleTableOrderingComposer(ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PlanetsPeopleTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PlanetsPeopleTable,
    PlanetsPeopleData,
    $$PlanetsPeopleTableFilterComposer,
    $$PlanetsPeopleTableOrderingComposer,
    $$PlanetsPeopleTableCreateCompanionBuilder,
    $$PlanetsPeopleTableUpdateCompanionBuilder,
    (PlanetsPeopleData, $$PlanetsPeopleTableReferences),
    PlanetsPeopleData,
    PrefetchHooks Function({bool planetId, bool peopleId})> {
  $$PlanetsPeopleTableTableManager(_$AppDatabase db, $PlanetsPeopleTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PlanetsPeopleTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PlanetsPeopleTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> planetId = const Value.absent(),
            Value<int> peopleId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PlanetsPeopleCompanion(
            planetId: planetId,
            peopleId: peopleId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int planetId,
            required int peopleId,
            Value<int> rowid = const Value.absent(),
          }) =>
              PlanetsPeopleCompanion.insert(
            planetId: planetId,
            peopleId: peopleId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PlanetsPeopleTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({planetId = false, peopleId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (planetId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.planetId,
                    referencedTable:
                        $$PlanetsPeopleTableReferences._planetIdTable(db),
                    referencedColumn:
                        $$PlanetsPeopleTableReferences._planetIdTable(db).id,
                  ) as T;
                }
                if (peopleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.peopleId,
                    referencedTable:
                        $$PlanetsPeopleTableReferences._peopleIdTable(db),
                    referencedColumn:
                        $$PlanetsPeopleTableReferences._peopleIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PlanetsPeopleTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PlanetsPeopleTable,
    PlanetsPeopleData,
    $$PlanetsPeopleTableFilterComposer,
    $$PlanetsPeopleTableOrderingComposer,
    $$PlanetsPeopleTableCreateCompanionBuilder,
    $$PlanetsPeopleTableUpdateCompanionBuilder,
    (PlanetsPeopleData, $$PlanetsPeopleTableReferences),
    PlanetsPeopleData,
    PrefetchHooks Function({bool planetId, bool peopleId})>;
typedef $$PeopleFilmsTableCreateCompanionBuilder = PeopleFilmsCompanion
    Function({
  required int peopleId,
  required int filmId,
  Value<int> rowid,
});
typedef $$PeopleFilmsTableUpdateCompanionBuilder = PeopleFilmsCompanion
    Function({
  Value<int> peopleId,
  Value<int> filmId,
  Value<int> rowid,
});

final class $$PeopleFilmsTableReferences
    extends BaseReferences<_$AppDatabase, $PeopleFilmsTable, PeopleFilm> {
  $$PeopleFilmsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PeopleTable _peopleIdTable(_$AppDatabase db) => db.people
      .createAlias($_aliasNameGenerator(db.peopleFilms.peopleId, db.people.id));

  $$PeopleTableProcessedTableManager? get peopleId {
    if ($_item.peopleId == null) return null;
    final manager = $$PeopleTableTableManager($_db, $_db.people)
        .filter((f) => f.id($_item.peopleId!));
    final item = $_typedResult.readTableOrNull(_peopleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $FilmsTable _filmIdTable(_$AppDatabase db) => db.films
      .createAlias($_aliasNameGenerator(db.peopleFilms.filmId, db.films.id));

  $$FilmsTableProcessedTableManager? get filmId {
    if ($_item.filmId == null) return null;
    final manager = $$FilmsTableTableManager($_db, $_db.films)
        .filter((f) => f.id($_item.filmId!));
    final item = $_typedResult.readTableOrNull(_filmIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PeopleFilmsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PeopleFilmsTable> {
  $$PeopleFilmsTableFilterComposer(super.$state);
  $$PeopleTableFilterComposer get peopleId {
    final $$PeopleTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.peopleId,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PeopleTableFilterComposer(
            ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableFilterComposer get filmId {
    final $$FilmsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PeopleFilmsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PeopleFilmsTable> {
  $$PeopleFilmsTableOrderingComposer(super.$state);
  $$PeopleTableOrderingComposer get peopleId {
    final $$PeopleTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.peopleId,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PeopleTableOrderingComposer(ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return composer;
  }

  $$FilmsTableOrderingComposer get filmId {
    final $$FilmsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.filmId,
        referencedTable: $state.db.films,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$FilmsTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.films, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PeopleFilmsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PeopleFilmsTable,
    PeopleFilm,
    $$PeopleFilmsTableFilterComposer,
    $$PeopleFilmsTableOrderingComposer,
    $$PeopleFilmsTableCreateCompanionBuilder,
    $$PeopleFilmsTableUpdateCompanionBuilder,
    (PeopleFilm, $$PeopleFilmsTableReferences),
    PeopleFilm,
    PrefetchHooks Function({bool peopleId, bool filmId})> {
  $$PeopleFilmsTableTableManager(_$AppDatabase db, $PeopleFilmsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PeopleFilmsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PeopleFilmsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> peopleId = const Value.absent(),
            Value<int> filmId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PeopleFilmsCompanion(
            peopleId: peopleId,
            filmId: filmId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int peopleId,
            required int filmId,
            Value<int> rowid = const Value.absent(),
          }) =>
              PeopleFilmsCompanion.insert(
            peopleId: peopleId,
            filmId: filmId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PeopleFilmsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({peopleId = false, filmId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (peopleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.peopleId,
                    referencedTable:
                        $$PeopleFilmsTableReferences._peopleIdTable(db),
                    referencedColumn:
                        $$PeopleFilmsTableReferences._peopleIdTable(db).id,
                  ) as T;
                }
                if (filmId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.filmId,
                    referencedTable:
                        $$PeopleFilmsTableReferences._filmIdTable(db),
                    referencedColumn:
                        $$PeopleFilmsTableReferences._filmIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PeopleFilmsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PeopleFilmsTable,
    PeopleFilm,
    $$PeopleFilmsTableFilterComposer,
    $$PeopleFilmsTableOrderingComposer,
    $$PeopleFilmsTableCreateCompanionBuilder,
    $$PeopleFilmsTableUpdateCompanionBuilder,
    (PeopleFilm, $$PeopleFilmsTableReferences),
    PeopleFilm,
    PrefetchHooks Function({bool peopleId, bool filmId})>;
typedef $$PeopleVehiclesTableCreateCompanionBuilder = PeopleVehiclesCompanion
    Function({
  required int peopleId,
  required int vehicleId,
  Value<int> rowid,
});
typedef $$PeopleVehiclesTableUpdateCompanionBuilder = PeopleVehiclesCompanion
    Function({
  Value<int> peopleId,
  Value<int> vehicleId,
  Value<int> rowid,
});

final class $$PeopleVehiclesTableReferences
    extends BaseReferences<_$AppDatabase, $PeopleVehiclesTable, PeopleVehicle> {
  $$PeopleVehiclesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $PeopleTable _peopleIdTable(_$AppDatabase db) => db.people.createAlias(
      $_aliasNameGenerator(db.peopleVehicles.peopleId, db.people.id));

  $$PeopleTableProcessedTableManager? get peopleId {
    if ($_item.peopleId == null) return null;
    final manager = $$PeopleTableTableManager($_db, $_db.people)
        .filter((f) => f.id($_item.peopleId!));
    final item = $_typedResult.readTableOrNull(_peopleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $VehiclesTable _vehicleIdTable(_$AppDatabase db) =>
      db.vehicles.createAlias(
          $_aliasNameGenerator(db.peopleVehicles.vehicleId, db.vehicles.id));

  $$VehiclesTableProcessedTableManager? get vehicleId {
    if ($_item.vehicleId == null) return null;
    final manager = $$VehiclesTableTableManager($_db, $_db.vehicles)
        .filter((f) => f.id($_item.vehicleId!));
    final item = $_typedResult.readTableOrNull(_vehicleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PeopleVehiclesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PeopleVehiclesTable> {
  $$PeopleVehiclesTableFilterComposer(super.$state);
  $$PeopleTableFilterComposer get peopleId {
    final $$PeopleTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.peopleId,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PeopleTableFilterComposer(
            ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return composer;
  }

  $$VehiclesTableFilterComposer get vehicleId {
    final $$VehiclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vehicleId,
        referencedTable: $state.db.vehicles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$VehiclesTableFilterComposer(ComposerState(
                $state.db, $state.db.vehicles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PeopleVehiclesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PeopleVehiclesTable> {
  $$PeopleVehiclesTableOrderingComposer(super.$state);
  $$PeopleTableOrderingComposer get peopleId {
    final $$PeopleTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.peopleId,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PeopleTableOrderingComposer(ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return composer;
  }

  $$VehiclesTableOrderingComposer get vehicleId {
    final $$VehiclesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vehicleId,
        referencedTable: $state.db.vehicles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$VehiclesTableOrderingComposer(ComposerState(
                $state.db, $state.db.vehicles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PeopleVehiclesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PeopleVehiclesTable,
    PeopleVehicle,
    $$PeopleVehiclesTableFilterComposer,
    $$PeopleVehiclesTableOrderingComposer,
    $$PeopleVehiclesTableCreateCompanionBuilder,
    $$PeopleVehiclesTableUpdateCompanionBuilder,
    (PeopleVehicle, $$PeopleVehiclesTableReferences),
    PeopleVehicle,
    PrefetchHooks Function({bool peopleId, bool vehicleId})> {
  $$PeopleVehiclesTableTableManager(
      _$AppDatabase db, $PeopleVehiclesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PeopleVehiclesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PeopleVehiclesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> peopleId = const Value.absent(),
            Value<int> vehicleId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PeopleVehiclesCompanion(
            peopleId: peopleId,
            vehicleId: vehicleId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int peopleId,
            required int vehicleId,
            Value<int> rowid = const Value.absent(),
          }) =>
              PeopleVehiclesCompanion.insert(
            peopleId: peopleId,
            vehicleId: vehicleId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PeopleVehiclesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({peopleId = false, vehicleId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (peopleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.peopleId,
                    referencedTable:
                        $$PeopleVehiclesTableReferences._peopleIdTable(db),
                    referencedColumn:
                        $$PeopleVehiclesTableReferences._peopleIdTable(db).id,
                  ) as T;
                }
                if (vehicleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.vehicleId,
                    referencedTable:
                        $$PeopleVehiclesTableReferences._vehicleIdTable(db),
                    referencedColumn:
                        $$PeopleVehiclesTableReferences._vehicleIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PeopleVehiclesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PeopleVehiclesTable,
    PeopleVehicle,
    $$PeopleVehiclesTableFilterComposer,
    $$PeopleVehiclesTableOrderingComposer,
    $$PeopleVehiclesTableCreateCompanionBuilder,
    $$PeopleVehiclesTableUpdateCompanionBuilder,
    (PeopleVehicle, $$PeopleVehiclesTableReferences),
    PeopleVehicle,
    PrefetchHooks Function({bool peopleId, bool vehicleId})>;
typedef $$PeopleStarshipsTableCreateCompanionBuilder = PeopleStarshipsCompanion
    Function({
  required int peopleId,
  required int starshipId,
  Value<int> rowid,
});
typedef $$PeopleStarshipsTableUpdateCompanionBuilder = PeopleStarshipsCompanion
    Function({
  Value<int> peopleId,
  Value<int> starshipId,
  Value<int> rowid,
});

final class $$PeopleStarshipsTableReferences extends BaseReferences<
    _$AppDatabase, $PeopleStarshipsTable, PeopleStarship> {
  $$PeopleStarshipsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $PeopleTable _peopleIdTable(_$AppDatabase db) => db.people.createAlias(
      $_aliasNameGenerator(db.peopleStarships.peopleId, db.people.id));

  $$PeopleTableProcessedTableManager? get peopleId {
    if ($_item.peopleId == null) return null;
    final manager = $$PeopleTableTableManager($_db, $_db.people)
        .filter((f) => f.id($_item.peopleId!));
    final item = $_typedResult.readTableOrNull(_peopleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $StarshipsTable _starshipIdTable(_$AppDatabase db) =>
      db.starships.createAlias(
          $_aliasNameGenerator(db.peopleStarships.starshipId, db.starships.id));

  $$StarshipsTableProcessedTableManager? get starshipId {
    if ($_item.starshipId == null) return null;
    final manager = $$StarshipsTableTableManager($_db, $_db.starships)
        .filter((f) => f.id($_item.starshipId!));
    final item = $_typedResult.readTableOrNull(_starshipIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PeopleStarshipsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PeopleStarshipsTable> {
  $$PeopleStarshipsTableFilterComposer(super.$state);
  $$PeopleTableFilterComposer get peopleId {
    final $$PeopleTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.peopleId,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$PeopleTableFilterComposer(
            ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return composer;
  }

  $$StarshipsTableFilterComposer get starshipId {
    final $$StarshipsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.starshipId,
        referencedTable: $state.db.starships,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$StarshipsTableFilterComposer(ComposerState(
                $state.db, $state.db.starships, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PeopleStarshipsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PeopleStarshipsTable> {
  $$PeopleStarshipsTableOrderingComposer(super.$state);
  $$PeopleTableOrderingComposer get peopleId {
    final $$PeopleTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.peopleId,
        referencedTable: $state.db.people,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$PeopleTableOrderingComposer(ComposerState(
                $state.db, $state.db.people, joinBuilder, parentComposers)));
    return composer;
  }

  $$StarshipsTableOrderingComposer get starshipId {
    final $$StarshipsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.starshipId,
        referencedTable: $state.db.starships,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$StarshipsTableOrderingComposer(ComposerState(
                $state.db, $state.db.starships, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PeopleStarshipsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PeopleStarshipsTable,
    PeopleStarship,
    $$PeopleStarshipsTableFilterComposer,
    $$PeopleStarshipsTableOrderingComposer,
    $$PeopleStarshipsTableCreateCompanionBuilder,
    $$PeopleStarshipsTableUpdateCompanionBuilder,
    (PeopleStarship, $$PeopleStarshipsTableReferences),
    PeopleStarship,
    PrefetchHooks Function({bool peopleId, bool starshipId})> {
  $$PeopleStarshipsTableTableManager(
      _$AppDatabase db, $PeopleStarshipsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PeopleStarshipsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PeopleStarshipsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> peopleId = const Value.absent(),
            Value<int> starshipId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PeopleStarshipsCompanion(
            peopleId: peopleId,
            starshipId: starshipId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int peopleId,
            required int starshipId,
            Value<int> rowid = const Value.absent(),
          }) =>
              PeopleStarshipsCompanion.insert(
            peopleId: peopleId,
            starshipId: starshipId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PeopleStarshipsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({peopleId = false, starshipId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (peopleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.peopleId,
                    referencedTable:
                        $$PeopleStarshipsTableReferences._peopleIdTable(db),
                    referencedColumn:
                        $$PeopleStarshipsTableReferences._peopleIdTable(db).id,
                  ) as T;
                }
                if (starshipId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.starshipId,
                    referencedTable:
                        $$PeopleStarshipsTableReferences._starshipIdTable(db),
                    referencedColumn: $$PeopleStarshipsTableReferences
                        ._starshipIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PeopleStarshipsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PeopleStarshipsTable,
    PeopleStarship,
    $$PeopleStarshipsTableFilterComposer,
    $$PeopleStarshipsTableOrderingComposer,
    $$PeopleStarshipsTableCreateCompanionBuilder,
    $$PeopleStarshipsTableUpdateCompanionBuilder,
    (PeopleStarship, $$PeopleStarshipsTableReferences),
    PeopleStarship,
    PrefetchHooks Function({bool peopleId, bool starshipId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PlanetsTableTableManager get planets =>
      $$PlanetsTableTableManager(_db, _db.planets);
  $$SpeciesTableTableManager get species =>
      $$SpeciesTableTableManager(_db, _db.species);
  $$PeopleTableTableManager get people =>
      $$PeopleTableTableManager(_db, _db.people);
  $$StarshipsTableTableManager get starships =>
      $$StarshipsTableTableManager(_db, _db.starships);
  $$VehiclesTableTableManager get vehicles =>
      $$VehiclesTableTableManager(_db, _db.vehicles);
  $$FilmsTableTableManager get films =>
      $$FilmsTableTableManager(_db, _db.films);
  $$VehiclesFilmsTableTableManager get vehiclesFilms =>
      $$VehiclesFilmsTableTableManager(_db, _db.vehiclesFilms);
  $$StarshipsFilmsTableTableManager get starshipsFilms =>
      $$StarshipsFilmsTableTableManager(_db, _db.starshipsFilms);
  $$SpeciesFilmsTableTableManager get speciesFilms =>
      $$SpeciesFilmsTableTableManager(_db, _db.speciesFilms);
  $$PlanetsFilmsTableTableManager get planetsFilms =>
      $$PlanetsFilmsTableTableManager(_db, _db.planetsFilms);
  $$PlanetsPeopleTableTableManager get planetsPeople =>
      $$PlanetsPeopleTableTableManager(_db, _db.planetsPeople);
  $$PeopleFilmsTableTableManager get peopleFilms =>
      $$PeopleFilmsTableTableManager(_db, _db.peopleFilms);
  $$PeopleVehiclesTableTableManager get peopleVehicles =>
      $$PeopleVehiclesTableTableManager(_db, _db.peopleVehicles);
  $$PeopleStarshipsTableTableManager get peopleStarships =>
      $$PeopleStarshipsTableTableManager(_db, _db.peopleStarships);
}
