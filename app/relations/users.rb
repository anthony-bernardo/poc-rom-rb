class Users < ROM::Relation[:sql]
  schema(infer: true)

  struct_namespace Entities
  auto_struct true
end