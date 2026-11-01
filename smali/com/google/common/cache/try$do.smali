.class public abstract Lcom/google/common/cache/try$do;
.super Lcom/google/common/cache/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/try<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LoadingCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LoadingCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/try;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/LoadingCache;

    iput-object p1, p0, Lcom/google/common/cache/try$do;->do:Lcom/google/common/cache/LoadingCache;

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Lcom/google/common/cache/Cache;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/cache/try$do;->do()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/try$do;->do()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method

.method public final do()Lcom/google/common/cache/LoadingCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LoadingCache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/try$do;->do:Lcom/google/common/cache/LoadingCache;

    return-object v0
.end method
