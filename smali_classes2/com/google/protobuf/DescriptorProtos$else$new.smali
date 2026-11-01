.class public final enum Lcom/google/protobuf/DescriptorProtos$else$new;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/DescriptorProtos$else$new;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum JS_NORMAL:Lcom/google/protobuf/DescriptorProtos$else$new;

.field public static final JS_NORMAL_VALUE:I = 0x0

.field public static final enum JS_NUMBER:Lcom/google/protobuf/DescriptorProtos$else$new;

.field public static final JS_NUMBER_VALUE:I = 0x2

.field public static final enum JS_STRING:Lcom/google/protobuf/DescriptorProtos$else$new;

.field public static final JS_STRING_VALUE:I = 0x1

.field private static final do:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/DescriptorProtos$else$new;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic for:[Lcom/google/protobuf/DescriptorProtos$else$new;

.field private static final if:[Lcom/google/protobuf/DescriptorProtos$else$new;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$else$new;

    const-string v1, "JS_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/DescriptorProtos$else$new;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$else$new;->JS_NORMAL:Lcom/google/protobuf/DescriptorProtos$else$new;

    .line 2
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$else$new;

    const-string v3, "JS_STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/protobuf/DescriptorProtos$else$new;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/protobuf/DescriptorProtos$else$new;->JS_STRING:Lcom/google/protobuf/DescriptorProtos$else$new;

    .line 3
    new-instance v3, Lcom/google/protobuf/DescriptorProtos$else$new;

    const-string v5, "JS_NUMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/protobuf/DescriptorProtos$else$new;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/protobuf/DescriptorProtos$else$new;->JS_NUMBER:Lcom/google/protobuf/DescriptorProtos$else$new;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/protobuf/DescriptorProtos$else$new;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/protobuf/DescriptorProtos$else$new;->for:[Lcom/google/protobuf/DescriptorProtos$else$new;

    .line 5
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$else$new$do;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$else$new$do;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$else$new;->do:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$else$new;->values()[Lcom/google/protobuf/DescriptorProtos$else$new;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$else$new;->if:[Lcom/google/protobuf/DescriptorProtos$else$new;

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
    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$else$new;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/protobuf/DescriptorProtos$else$new;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$else$new;->JS_NUMBER:Lcom/google/protobuf/DescriptorProtos$else$new;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$else$new;->JS_STRING:Lcom/google/protobuf/DescriptorProtos$else$new;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$else$new;->JS_NORMAL:Lcom/google/protobuf/DescriptorProtos$else$new;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$try;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$else;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->const()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/google/protobuf/DescriptorProtos$else$new;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$else$new;->do:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/DescriptorProtos$else$new;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$else$new;->forNumber(I)Lcom/google/protobuf/DescriptorProtos$else$new;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$case;)Lcom/google/protobuf/DescriptorProtos$else$new;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$case;->goto()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$else$new;->getDescriptor()Lcom/google/protobuf/Descriptors$try;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$else$new;->if:[Lcom/google/protobuf/DescriptorProtos$else$new;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$else$new;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/DescriptorProtos$else$new;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$else$new;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$else$new;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$else$new;->for:[Lcom/google/protobuf/DescriptorProtos$else$new;

    invoke-virtual {v0}, [Lcom/google/protobuf/DescriptorProtos$else$new;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/DescriptorProtos$else$new;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$try;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$else$new;->getDescriptor()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$else$new;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$case;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$else$new;->getDescriptor()Lcom/google/protobuf/Descriptors$try;

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
