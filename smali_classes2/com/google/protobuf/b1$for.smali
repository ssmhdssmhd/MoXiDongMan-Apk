.class Lcom/google/protobuf/b1$for;
.super Lcom/google/protobuf/b1$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/b1<",
        "TK;TV;>.else;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/protobuf/b1;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/b1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/b1$for;->if:Lcom/google/protobuf/b1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/b1$else;-><init>(Lcom/google/protobuf/b1;Lcom/google/protobuf/b1$do;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/b1;Lcom/google/protobuf/b1$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/b1$for;-><init>(Lcom/google/protobuf/b1;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/b1$if;

    iget-object v1, p0, Lcom/google/protobuf/b1$for;->if:Lcom/google/protobuf/b1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/b1$if;-><init>(Lcom/google/protobuf/b1;Lcom/google/protobuf/b1$do;)V

    return-object v0
.end method
