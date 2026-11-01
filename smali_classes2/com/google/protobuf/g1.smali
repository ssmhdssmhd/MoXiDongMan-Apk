.class public final Lcom/google/protobuf/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static final do:Lcom/google/protobuf/Descriptors$if;

.field public static final else:Lcom/google/protobuf/Descriptors$if;

.field public static final for:Lcom/google/protobuf/Descriptors$if;

.field public static final goto:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static final if:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field public static final new:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static this:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field public static final try:Lcom/google/protobuf/Descriptors$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "\n\u001cgoogle/protobuf/struct.proto\u0012\u000fgoogle.protobuf\"\u0084\u0001\n\u0006Struct\u00123\n\u0006fields\u0018\u0001 \u0003(\u000b2#.google.protobuf.Struct.FieldsEntry\u001aE\n\u000bFieldsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012%\n\u0005value\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.Value:\u00028\u0001\"\u00ea\u0001\n\u0005Value\u00120\n\nnull_value\u0018\u0001 \u0001(\u000e2\u001a.google.protobuf.NullValueH\u0000\u0012\u0016\n\u000cnumber_value\u0018\u0002 \u0001(\u0001H\u0000\u0012\u0016\n\u000cstring_value\u0018\u0003 \u0001(\tH\u0000\u0012\u0014\n\nbool_value\u0018\u0004 \u0001(\u0008H\u0000\u0012/\n\u000cstruct_value\u0018\u0005 \u0001(\u000b2\u0017.google.protobuf.StructH\u0000\u00120\n\nlist_value\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.ListValueH\u0000B\u0006\n\u0004kind\"3\n\tListValue\u0012&\n\u0006values\u0018\u0001 \u0003(\u000b2\u0016.google.protobuf.Value*\u001b\n\tNullValue\u0012\u000e\n\nNULL_VALUE\u0010\u0000B\u0081\u0001\n\u0013com.google.protobufB\u000bStructProtoP\u0001Z1github.com/golang/protobuf/ptypes/struct;structpb\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->throws([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/g1;->this:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/protobuf/g1;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/google/protobuf/g1;->do:Lcom/google/protobuf/Descriptors$if;

    .line 4
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Fields"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/g1;->if:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/google/protobuf/g1;->for:Lcom/google/protobuf/Descriptors$if;

    .line 6
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Key"

    const-string v3, "Value"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/g1;->new:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 7
    invoke-static {}, Lcom/google/protobuf/g1;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/google/protobuf/g1;->try:Lcom/google/protobuf/Descriptors$if;

    .line 8
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "NullValue"

    const-string v3, "NumberValue"

    const-string v4, "StringValue"

    const-string v5, "BoolValue"

    const-string v6, "StructValue"

    const-string v7, "ListValue"

    const-string v8, "Kind"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/g1;->case:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 9
    invoke-static {}, Lcom/google/protobuf/g1;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/google/protobuf/g1;->else:Lcom/google/protobuf/Descriptors$if;

    .line 10
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Values"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/g1;->goto:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/g1;->this:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static for(Lcom/google/protobuf/implements;)V
    .locals 0

    return-void
.end method

.method public static if(Lcom/google/protobuf/protected;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/g1;->for(Lcom/google/protobuf/implements;)V

    return-void
.end method
