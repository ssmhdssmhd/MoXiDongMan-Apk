.class public Lcom/google/common/collect/b0$do;
.super Lcom/google/common/collect/Maps$while;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$while<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/google/common/collect/b0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b0$do;->new:Lcom/google/common/collect/b0;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$while;-><init>()V

    return-void
.end method


# virtual methods
.method public for()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b0$do;->new:Lcom/google/common/collect/b0;

    return-object v0
.end method

.method public if()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/b0$do$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b0$do$do;-><init>(Lcom/google/common/collect/b0$do;)V

    return-object v0
.end method
