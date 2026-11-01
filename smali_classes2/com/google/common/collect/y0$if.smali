.class final Lcom/google/common/collect/y0$if;
.super Lcom/google/common/collect/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient case:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final transient try:Lcom/google/common/collect/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x0;Lcom/google/common/collect/v0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/v0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/y0;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/y0$if;->try:Lcom/google/common/collect/x0;

    .line 4
    iput-object p2, p0, Lcom/google/common/collect/y0$if;->case:Lcom/google/common/collect/v0;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/x0;[Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x0<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/v0;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/y0$if;-><init>(Lcom/google/common/collect/x0;Lcom/google/common/collect/v0;)V

    return-void
.end method


# virtual methods
.method public copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .annotation build Landroid/support/v4/li0;
        value = "not used in GWT"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y0$if;->case:Lcom/google/common/collect/v0;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v0;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public createAsList()Lcom/google/common/collect/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y0$if;->case:Lcom/google/common/collect/v0;

    return-object v0
.end method

.method public iterator()Landroid/support/v4/ac2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/y0$if;->case:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/y0$if;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public map()Lcom/google/common/collect/x0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y0$if;->try:Lcom/google/common/collect/x0;

    return-object v0
.end method
