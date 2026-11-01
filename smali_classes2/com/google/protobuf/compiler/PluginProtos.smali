.class public final Lcom/google/protobuf/compiler/PluginProtos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;,
        Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponseOrBuilder;,
        Lcom/google/protobuf/compiler/PluginProtos$if;,
        Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;,
        Lcom/google/protobuf/compiler/PluginProtos$for;,
        Lcom/google/protobuf/compiler/PluginProtos$VersionOrBuilder;
    }
.end annotation


# static fields
.field private static final case:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final do:Lcom/google/protobuf/Descriptors$if;

.field private static final else:Lcom/google/protobuf/Descriptors$if;

.field private static final for:Lcom/google/protobuf/Descriptors$if;

.field private static final goto:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final if:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final new:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static this:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final try:Lcom/google/protobuf/Descriptors$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "\n%google/protobuf/compiler/plugin.proto\u0012\u0018google.protobuf.compiler\u001a google/protobuf/descriptor.proto\"F\n\u0007Version\u0012\r\n\u0005major\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005minor\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005patch\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006suffix\u0018\u0004 \u0001(\t\"\u00ba\u0001\n\u0014CodeGeneratorRequest\u0012\u0018\n\u0010file_to_generate\u0018\u0001 \u0003(\t\u0012\u0011\n\tparameter\u0018\u0002 \u0001(\t\u00128\n\nproto_file\u0018\u000f \u0003(\u000b2$.google.protobuf.FileDescriptorProto\u0012;\n\u0010compiler_version\u0018\u0003 \u0001(\u000b2!.google.protobuf.compiler.Version\"\u0080\u0002\n\u0015CodeGeneratorResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012supported_features\u0018\u0002 \u0001(\u0004\u0012B\n\u0004file\u0018\u000f \u0003(\u000b24.google.protobuf.compiler.CodeGeneratorResponse.File\u001a>\n\u0004File\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000finsertion_point\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007content\u0018\u000f \u0001(\t\"8\n\u0007Feature\u0012\u0010\n\u000cFEATURE_NONE\u0010\u0000\u0012\u001b\n\u0017FEATURE_PROTO3_OPTIONAL\u0010\u0001Bg\n\u001ccom.google.protobuf.compilerB\u000cPluginProtosZ9github.com/golang/protobuf/protoc-gen-go/plugin;plugin_go"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->p()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->throws([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos;->this:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->this()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos;->do:Lcom/google/protobuf/Descriptors$if;

    .line 5
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Major"

    const-string v5, "Minor"

    const-string v6, "Patch"

    const-string v7, "Suffix"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/compiler/PluginProtos;->if:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 6
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->this()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos;->for:Lcom/google/protobuf/Descriptors$if;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "FileToGenerate"

    const-string v3, "Parameter"

    const-string v5, "ProtoFile"

    const-string v6, "CompilerVersion"

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/compiler/PluginProtos;->new:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 8
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->this()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->while()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos;->try:Lcom/google/protobuf/Descriptors$if;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Error"

    const-string v3, "SupportedFeatures"

    const-string v5, "File"

    filled-new-array {v2, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/compiler/PluginProtos;->case:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->while()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos;->else:Lcom/google/protobuf/Descriptors$if;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Name"

    const-string v3, "InsertionPoint"

    const-string v4, "Content"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$if;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/compiler/PluginProtos;->goto:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->p()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Lcom/google/protobuf/protected;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/compiler/PluginProtos;->catch(Lcom/google/protobuf/implements;)V

    return-void
.end method

.method public static synthetic case()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->case:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static catch(Lcom/google/protobuf/implements;)V
    .locals 0

    return-void
.end method

.method public static synthetic do()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->do:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic else()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->else:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic for()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->for:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public static synthetic goto()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->goto:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic if()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->if:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic new()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->new:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static this()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->this:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static synthetic try()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method
