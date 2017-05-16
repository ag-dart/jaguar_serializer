part of jaguar_serializer.serializer;

/**
 * Interface specification to add custom field decoders
 * Can be used to basic value like [DateTime] or [ObjectId] to [String]
 *
 * Example:
 *
 *     @DefineFieldProcessor()
 *     class DateTimeProcessor implements FieldProcessor<DateTime, String> {
 *       final Symbol field;
 *
 *       const DateTimeProcessor(this.field);
 *
 *       DateTime deserialize(String input) {
 *         return DateTime.parse(input);
 *       }
 *
 *       String serialize(DateTime value) {
 *        return value.toIso8601String();
 *       }
 *     }
 *
 *
 *     @GenSerializer()
 *     @MongoId(#id)
 *     class UserSerializer extends Serializer<User> with _$UserSerializer {
 *        User createModel() => new User();
 *     }
 *
 *     class User {
 *        DateTime birthday;
 *     }
 */
abstract class FieldProcessor<FromType, ToType> {
  /// Field in the model to be processed
  Symbol get field;

  /// Called to process field before decoding
  FromType deserialize(ToType value);

  /// Called to process field before encoding
  ToType serialize(FromType value);
}