.class Lcom/google/protobuf/p1$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# static fields
.field private static final do:Lcom/google/protobuf/p1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/p1;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/p1;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/protobuf/p1$for;->do:Lcom/google/protobuf/p1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcom/google/protobuf/p1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/p1$for;->do:Lcom/google/protobuf/p1;

    return-object v0
.end method
