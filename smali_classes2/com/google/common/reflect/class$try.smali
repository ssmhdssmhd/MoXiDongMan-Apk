.class abstract enum Lcom/google/common/reflect/class$try;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/class$try;",
        ">;"
    }
.end annotation


# static fields
.field public static final CURRENT:Lcom/google/common/reflect/class$try;

.field public static final enum JAVA6:Lcom/google/common/reflect/class$try;

.field public static final enum JAVA7:Lcom/google/common/reflect/class$try;

.field public static final enum JAVA8:Lcom/google/common/reflect/class$try;

.field public static final enum JAVA9:Lcom/google/common/reflect/class$try;

.field private static final synthetic do:[Lcom/google/common/reflect/class$try;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/common/reflect/class$try$do;

    const-string v1, "JAVA6"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/class$try$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/class$try;->JAVA6:Lcom/google/common/reflect/class$try;

    .line 2
    new-instance v1, Lcom/google/common/reflect/class$try$if;

    const-string v3, "JAVA7"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/reflect/class$try$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/reflect/class$try;->JAVA7:Lcom/google/common/reflect/class$try;

    .line 3
    new-instance v3, Lcom/google/common/reflect/class$try$for;

    const-string v5, "JAVA8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/reflect/class$try$for;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/reflect/class$try;->JAVA8:Lcom/google/common/reflect/class$try;

    .line 4
    new-instance v5, Lcom/google/common/reflect/class$try$new;

    const-string v7, "JAVA9"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/reflect/class$try$new;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/reflect/class$try;->JAVA9:Lcom/google/common/reflect/class$try;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/common/reflect/class$try;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/common/reflect/class$try;->do:[Lcom/google/common/reflect/class$try;

    .line 6
    const-class v2, Ljava/lang/reflect/AnnotatedElement;

    const-class v4, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v0, Lcom/google/common/reflect/class$try$try;

    invoke-direct {v0}, Lcom/google/common/reflect/class$try$try;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/reflect/else;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Map.java.util.Map"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sput-object v3, Lcom/google/common/reflect/class$try;->CURRENT:Lcom/google/common/reflect/class$try;

    goto :goto_0

    .line 11
    :cond_0
    sput-object v5, Lcom/google/common/reflect/class$try;->CURRENT:Lcom/google/common/reflect/class$try;

    goto :goto_0

    .line 12
    :cond_1
    new-instance v2, Lcom/google/common/reflect/class$try$case;

    invoke-direct {v2}, Lcom/google/common/reflect/class$try$case;-><init>()V

    invoke-virtual {v2}, Lcom/google/common/reflect/else;->capture()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 13
    sput-object v1, Lcom/google/common/reflect/class$try;->CURRENT:Lcom/google/common/reflect/class$try;

    goto :goto_0

    .line 14
    :cond_2
    sput-object v0, Lcom/google/common/reflect/class$try;->CURRENT:Lcom/google/common/reflect/class$try;

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/class$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/class$try;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/class$try;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/reflect/class$try;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/reflect/class$try;

    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/class$try;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/class$try;->do:[Lcom/google/common/reflect/class$try;

    invoke-virtual {v0}, [Lcom/google/common/reflect/class$try;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/class$try;

    return-object v0
.end method


# virtual methods
.method public jdkTypeDuplicatesOwnerName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method public typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/reflect/class;->public(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final usedInGenericType([Ljava/lang/reflect/Type;)Lcom/google/common/collect/v0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/v0<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/v0;->builder()Lcom/google/common/collect/v0$do;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/class$try;->usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1
.end method

.method public abstract usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
