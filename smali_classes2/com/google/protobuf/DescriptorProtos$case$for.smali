.class public final enum Lcom/google/protobuf/DescriptorProtos$case$for;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/DescriptorProtos$case$for;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum LABEL_OPTIONAL:Lcom/google/protobuf/DescriptorProtos$case$for;

.field public static final LABEL_OPTIONAL_VALUE:I = 0x1

.field public static final enum LABEL_REPEATED:Lcom/google/protobuf/DescriptorProtos$case$for;

.field public static final LABEL_REPEATED_VALUE:I = 0x3

.field public static final enum LABEL_REQUIRED:Lcom/google/protobuf/DescriptorProtos$case$for;

.field public static final LABEL_REQUIRED_VALUE:I = 0x2

.field private static final do:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/DescriptorProtos$case$for;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic for:[Lcom/google/protobuf/DescriptorProtos$case$for;

.field private static final if:[Lcom/google/protobuf/DescriptorProtos$case$for;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$case$for;

    const-string v1, "LABEL_OPTIONAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/DescriptorProtos$case$for;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_OPTIONAL:Lcom/google/protobuf/DescriptorProtos$case$for;

    .line 2
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$case$for;

    const-string v4, "LABEL_REQUIRED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/protobuf/DescriptorProtos$case$for;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_REQUIRED:Lcom/google/protobuf/DescriptorProtos$case$for;

    .line 3
    new-instance v4, Lcom/google/protobuf/DescriptorProtos$case$for;

    const-string v6, "LABEL_REPEATED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/protobuf/DescriptorProtos$case$for;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_REPEATED:Lcom/google/protobuf/DescriptorProtos$case$for;

    new-array v6, v7, [Lcom/google/protobuf/DescriptorProtos$case$for;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 4
    sput-object v6, Lcom/google/protobuf/DescriptorProtos$case$for;->for:[Lcom/google/protobuf/DescriptorProtos$case$for;

    .line 5
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$case$for$do;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$case$for$do;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$case$for;->do:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$case$for;->values()[Lcom/google/protobuf/DescriptorProtos$case$for;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$case$for;->if:[Lcom/google/protobuf/DescriptorProtos$case$for;

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
    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$case$for;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/protobuf/DescriptorProtos$case$for;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_REPEATED:Lcom/google/protobuf/DescriptorProtos$case$for;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_REQUIRED:Lcom/google/protobuf/DescriptorProtos$case$for;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_OPTIONAL:Lcom/google/protobuf/DescriptorProtos$case$for;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$try;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$case;->getDescriptor()Lcom/google/protobuf/Descriptors$if;

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
            "Lcom/google/protobuf/DescriptorProtos$case$for;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case$for;->do:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/DescriptorProtos$case$for;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$case$for;->forNumber(I)Lcom/google/protobuf/DescriptorProtos$case$for;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$case;)Lcom/google/protobuf/DescriptorProtos$case$for;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$case;->goto()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$case$for;->getDescriptor()Lcom/google/protobuf/Descriptors$try;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case$for;->if:[Lcom/google/protobuf/DescriptorProtos$case$for;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$case$for;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/DescriptorProtos$case$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$case$for;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$case$for;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$case$for;->for:[Lcom/google/protobuf/DescriptorProtos$case$for;

    invoke-virtual {v0}, [Lcom/google/protobuf/DescriptorProtos$case$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/DescriptorProtos$case$for;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$try;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$case$for;->getDescriptor()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$case$for;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$case;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$case$for;->getDescriptor()Lcom/google/protobuf/Descriptors$try;

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
