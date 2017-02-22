// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.test.models.book;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class BookSerializer
// **************************************************************************

abstract class _$BookSerializer implements MapSerializer<Book> {
  final AuthorSerializer toAuthorSerializer = new AuthorSerializer();
  final AuthorSerializer fromAuthorSerializer = new AuthorSerializer();

  Map toMap(Book model, {bool withTypeInfo: false}) {
    Map ret = new Map();
    if (model != null) {
      if (model.name != null) {
        ret["name"] = model.name;
      }
      if (model.tags != null) {
        ret["tags"] =
            model.tags?.map((String val) => val != null ? val : null)?.toList();
      }
      if (model.publishedDates != null) {
        ret["publishedDates"] = new MapKeyNumToStringProcessor(#publishedDates)
            .to(model.publishedDates);
      }
      if (model.authors != null) {
        ret["authors"] = model.authors
            ?.map((Author val) => val != null
                ? toAuthorSerializer.toMap(val, withTypeInfo: withTypeInfo)
                : null)
            ?.toList();
      }
      if (modelString != null && withTypeInfo) {
        ret[SerializerRepo.typeInfoKey] = modelString;
      }
    }
    return ret;
  }

  Book fromMap(Map map, {Book model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Book) {
      model = createModel();
    }
    model.name = map["name"];
    model.tags = map["tags"]?.map((String val) => val)?.toList();
    model.publishedDates = new MapKeyNumToStringProcessor(#publishedDates)
        .from(map["publishedDates"]);
    model.authors = map["authors"]
        ?.map((Map val) => fromAuthorSerializer.fromMap(val))
        ?.toList();
    return model;
  }

  String get modelString => "Book";
}
