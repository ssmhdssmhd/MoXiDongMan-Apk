.class final Lcom/google/common/hash/native$if;
.super Lcom/google/common/hash/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final for:I

.field private final if:Ljava/security/MessageDigest;

.field private new:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/hash/do;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/hash/native$if;->if:Ljava/security/MessageDigest;

    .line 4
    iput p2, p0, Lcom/google/common/hash/native$if;->for:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/common/hash/native$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/native$if;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private case()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/common/hash/native$if;->new:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Landroid/support/v4/af1;->u(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public for(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/native$if;->case()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/native$if;->if:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public hash()Lcom/google/common/hash/class;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/native$if;->case()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/common/hash/native$if;->new:Z

    .line 3
    iget v0, p0, Lcom/google/common/hash/native$if;->for:I

    iget-object v1, p0, Lcom/google/common/hash/native$if;->if:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/native$if;->if:Ljava/security/MessageDigest;

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/class;->fromBytesNoCopy([B)Lcom/google/common/hash/class;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/native$if;->if:Ljava/security/MessageDigest;

    .line 5
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/native$if;->for:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/class;->fromBytesNoCopy([B)Lcom/google/common/hash/class;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public if(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/native$if;->case()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/native$if;->if:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public try([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/native$if;->case()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/native$if;->if:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
