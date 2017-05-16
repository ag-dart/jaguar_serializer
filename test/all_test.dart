library serializer.test.all;

import 'serializer/builtin/builtin_to.dart' as builtinTo;
import 'serializer/builtin/builtin_from.dart' as builtinFrom;

import 'serializer/list/list_to.dart' as listTo;
import 'serializer/list/list_from.dart' as listFrom;

import 'serializer/excludeByDefault/excludeByDefault.dart' as excludeByDefault;

import 'serializer/nested_objects/builtin_to.dart' as nestedObjectTo;

import 'generator/writer/list_map/list_map.dart' as genWriterListMap;

import 'serializer/various/various.dart' as various;

import 'serializer/serializer_json.dart' as serializer_json;
import 'serializer/serializer_yaml.dart' as serializer_yaml;

void main() {
  builtinTo.main();
  builtinFrom.main();

  listTo.main();
  listFrom.main();

  excludeByDefault.main();

  nestedObjectTo.main();

  various.main();

  serializer_json.main();
  serializer_yaml.main();

  genWriterListMap.main();
}