.class public Lcom/google/protobuf/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/p1$if;,
        Lcom/google/protobuf/p1$for;
    }
.end annotation


# static fields
.field private static final if:Ljava/util/logging/Logger;


# instance fields
.field private final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$if;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/p1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/p1;->if:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$if;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/p1;->do:Ljava/util/Map;

    return-void
.end method

.method public static case()Lcom/google/protobuf/p1$if;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/p1$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/p1$if;-><init>(Lcom/google/protobuf/p1$do;)V

    return-object v0
.end method

.method public static synthetic do()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/p1;->if:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static new()Lcom/google/protobuf/p1;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/p1$for;->do()Lcom/google/protobuf/p1;

    move-result-object v0

    return-object v0
.end method

.method private static try(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    new-instance v0, Lcom/google/protobuf/n;

    const-string v1, "Invalid type url found: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Lcom/google/protobuf/n;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    array-length p0, v0

    sub-int/2addr p0, v2

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public final for(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$if;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/n;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/p1;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/p1;->if(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/p1;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$if;

    return-object p1
.end method
