unit untCollectionsReflect;

interface

uses
  Generics.Collections, REST.JsonReflect;

type
  SerializeObjectListAttribute = class(JsonReflectAttribute)
    constructor Create;
  end;

implementation

uses
  Rtti;

type
  TListOfObjectInterceptor = class(TJSONInterceptor)
    function ObjectsConverter(Data: TObject; Field: string): TListOfObjects; override;
  end;

{ TListOfObjectInterceptor }

function TListOfObjectInterceptor.ObjectsConverter(Data: TObject; Field: string): TListOfObjects;
var
  ctx: TRttiContext;
  list: TList<TObject>;
begin
  list := TList<TObject>(ctx.GetType(Data.ClassInfo).GetField(Field).GetValue(Data).AsObject);
  Result := TListOfObjects(list.List);
  SetLength(Result, list.Count);
end;

{ SerializeObjectListAttribute }

constructor SerializeObjectListAttribute.Create;
begin
  inherited Create(ctObjects, rtObjects, TListOfObjectInterceptor);
end;

end.

