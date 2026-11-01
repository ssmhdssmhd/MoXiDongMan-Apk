.class final Lcom/google/common/hash/import$if;
.super Lcom/google/common/hash/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private for:Z

.field private final if:Ljavax/crypto/Mac;


# direct methods
.method private constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/hash/do;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/hash/import$if;->if:Ljavax/crypto/Mac;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/crypto/Mac;Lcom/google/common/hash/import$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/hash/import$if;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method

.method private case()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/common/hash/import$if;->for:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public for(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/import$if;->case()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/common/hash/import$if;->if:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public hash()Lcom/google/common/hash/class;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/import$if;->case()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/common/hash/import$if;->for:Z

    .line 3
    iget-object v0, p0, Lcom/google/common/hash/import$if;->if:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/class;->fromBytesNoCopy([B)Lcom/google/common/hash/class;

    move-result-object v0

    return-object v0
.end method

.method public if(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/import$if;->case()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/import$if;->if:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method public new([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/import$if;->case()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/import$if;->if:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method public try([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/import$if;->case()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/import$if;->if:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
