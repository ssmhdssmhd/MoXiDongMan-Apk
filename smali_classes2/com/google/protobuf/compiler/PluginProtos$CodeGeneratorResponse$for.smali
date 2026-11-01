.class public final enum Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum FEATURE_NONE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

.field public static final FEATURE_NONE_VALUE:I = 0x0

.field public static final enum FEATURE_PROTO3_OPTIONAL:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

.field public static final FEATURE_PROTO3_OPTIONAL_VALUE:I = 0x1

.field private static final do:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic for:[Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

.field private static final if:[Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    const-string v1, "FEATURE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->FEATURE_NONE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    .line 2
    new-instance v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    const-string v3, "FEATURE_PROTO3_OPTIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->FEATURE_PROTO3_OPTIONAL:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->for:[Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    .line 4
    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for$do;

    invoke-direct {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for$do;-><init>()V

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->do:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 5
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->values()[Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->if:[Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->FEATURE_PROTO3_OPTIONAL:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->FEATURE_NONE:Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$try;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->const()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$try;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->do:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->forNumber(I)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$case;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$case;->goto()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->getDescriptor()Lcom/google/protobuf/Descriptors$try;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->if:[Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$case;->case()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->for:[Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    invoke-virtual {v0}, [Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$try;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->getDescriptor()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$case;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse$for;->getDescriptor()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$try;->const()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$case;

    return-object v0
.end method
