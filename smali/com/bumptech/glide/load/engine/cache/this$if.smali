.class final Lcom/bumptech/glide/load/engine/cache/this$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final do:Ljava/security/MessageDigest;

.field private final if:Lcom/bumptech/glide/util/pool/do;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/bumptech/glide/util/pool/do;->do()Lcom/bumptech/glide/util/pool/do;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/this$if;->if:Lcom/bumptech/glide/util/pool/do;

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/this$if;->do:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public getVerifier()Lcom/bumptech/glide/util/pool/do;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/this$if;->if:Lcom/bumptech/glide/util/pool/do;

    return-object v0
.end method
