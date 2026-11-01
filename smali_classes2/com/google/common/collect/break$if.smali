.class final Lcom/google/common/collect/break$if;
.super Lcom/google/common/collect/Maps$while;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$while<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/google/common/collect/break;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/break;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/break$if;->new:Lcom/google/common/collect/break;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$while;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/break;Lcom/google/common/collect/break$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/break$if;-><init>(Lcom/google/common/collect/break;)V

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
    iget-object v0, p0, Lcom/google/common/collect/break$if;->new:Lcom/google/common/collect/break;

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
    iget-object v0, p0, Lcom/google/common/collect/break$if;->new:Lcom/google/common/collect/break;

    invoke-virtual {v0}, Lcom/google/common/collect/break;->if()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
