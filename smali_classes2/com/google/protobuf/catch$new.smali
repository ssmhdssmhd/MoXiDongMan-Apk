.class final Lcom/google/protobuf/catch$new;
.super Lcom/google/protobuf/catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation


# instance fields
.field private break:J

.field private catch:J

.field private goto:Ljava/nio/ByteBuffer;

.field private this:J


# direct methods
.method public constructor <init>(Lcom/google/protobuf/final;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/catch;-><init>(Lcom/google/protobuf/final;ILcom/google/protobuf/catch$do;)V

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->w()V

    return-void
.end method

.method private A(I)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0x1c

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0x15

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 5
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private B(I)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0x15

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private C(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private D(I)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private E(I)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v4, p1, 0x7

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private F(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 5
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 6
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 7
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 8
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private G(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 5
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private H(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private I(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 5
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 6
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 7
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 8
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 9
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private J(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private K(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 5
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 6
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 7
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private L(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 5
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 6
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private M(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x3f

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 5
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 6
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 7
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 8
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 9
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 10
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private N(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    long-to-int v4, p1

    ushr-int/lit8 v4, v4, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method private O(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method public static synthetic s()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/catch$new;->v()Z

    move-result v0

    return v0
.end method

.method private t()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    iget-wide v2, p0, Lcom/google/protobuf/catch$new;->this:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private u()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->break:J

    iget-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private static v()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/z1;->g()Z

    move-result v0

    return v0
.end method

.method private w()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/catch;->const()Lcom/google/protobuf/for;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/catch$new;->y(Lcom/google/protobuf/for;)V

    return-void
.end method

.method private x(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/catch;->final(I)Lcom/google/protobuf/for;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/catch$new;->y(Lcom/google/protobuf/for;)V

    return-void
.end method

.method private y(Lcom/google/protobuf/for;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/for;->new()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/for;->case()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/catch$new;->this()V

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/catch;->for:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 8
    iget-object p1, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 9
    iget-object p1, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/protobuf/z1;->this(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/catch$new;->this:J

    .line 10
    iget-object p1, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/catch$new;->break:J

    .line 11
    iput-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-direct buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocated buffer does not have NIO buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private z()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->t()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public break()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/catch;->new:I

    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->u()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public continue(I)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method public default(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->z()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/catch$new;->x(I)V

    :cond_0
    return-void
.end method

.method public do(B)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/native;->w(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/catch$new;->q(I)V

    return-void
.end method

.method public extends(Z)V
    .locals 0

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/catch$new;->do(B)V

    return-void
.end method

.method public for([BII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->z()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 2
    invoke-direct {p0, p3}, Lcom/google/protobuf/catch$new;->x(I)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->t()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public h(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/protobuf/native;->x(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->r(J)V

    return-void
.end method

.method public if(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->z()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/catch$new;->x(I)V

    .line 4
    :cond_0
    iget-wide v1, p0, Lcom/google/protobuf/catch$new;->catch:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/catch$new;->catch:J

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->t()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public interface(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x38

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 2
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 3
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 4
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 5
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 6
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 7
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/catch$new;->catch:J

    const/16 v4, 0x8

    shr-long v4, p1, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/z1;->o(JB)V

    .line 8
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/z1;->o(JB)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x80

    const-wide/16 v2, 0x1

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v1, :cond_0

    .line 4
    iget-wide v5, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v2, v5, v2

    iput-wide v2, p0, Lcom/google/protobuf/catch$new;->catch:J

    int-to-byte v1, v4

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/z1;->o(JB)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ltz v0, :cond_8

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v1, :cond_2

    .line 6
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    iget-wide v8, p0, Lcom/google/protobuf/catch$new;->this:J

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    sub-long v8, v6, v2

    .line 7
    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/z1;->o(JB)V

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x800

    if-ge v5, v6, :cond_3

    .line 8
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    iget-wide v8, p0, Lcom/google/protobuf/catch$new;->this:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    sub-long v8, v6, v2

    .line 9
    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/z1;->o(JB)V

    .line 10
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v5, v5, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/z1;->o(JB)V

    goto/16 :goto_2

    :cond_3
    const v6, 0xd800

    if-lt v5, v6, :cond_4

    const v6, 0xdfff

    if-ge v6, v5, :cond_5

    .line 11
    :cond_4
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    iget-wide v8, p0, Lcom/google/protobuf/catch$new;->this:J

    add-long/2addr v8, v2

    cmp-long v10, v6, v8

    if-lez v10, :cond_5

    sub-long v8, v6, v2

    .line 12
    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/z1;->o(JB)V

    .line 13
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/z1;->o(JB)V

    .line 14
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v5, v5, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/z1;->o(JB)V

    goto :goto_2

    .line 15
    :cond_5
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    iget-wide v8, p0, Lcom/google/protobuf/catch$new;->this:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    cmp-long v10, v6, v8

    if-lez v10, :cond_7

    if-eqz v0, :cond_6

    add-int/lit8 v6, v0, -0x1

    .line 16
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 17
    invoke-static {v6, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 18
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/z1;->o(JB)V

    .line 19
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/z1;->o(JB)V

    .line 20
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/z1;->o(JB)V

    .line 21
    iget-wide v6, p0, Lcom/google/protobuf/catch$new;->catch:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/catch$new;->catch:J

    ushr-int/lit8 v5, v5, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/z1;->o(JB)V

    goto :goto_2

    .line 22
    :cond_6
    new-instance p1, Lcom/google/protobuf/a2$new;

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p1, v1, v0}, Lcom/google/protobuf/a2$new;-><init>(II)V

    throw p1

    .line 23
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/2addr v0, v4

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public l(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/protobuf/c2;->for(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/catch$new;->q(I)V

    return-void
.end method

.method public new(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->z()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 3
    iget v1, p0, Lcom/google/protobuf/catch;->new:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/catch;->new:I

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/catch;->for:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/google/protobuf/for;->break(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/for;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->w()V

    return-void

    .line 6
    :cond_0
    iget-wide v1, p0, Lcom/google/protobuf/catch$new;->catch:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/catch$new;->catch:J

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->t()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public q(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/catch$new;->C(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/catch$new;->E(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/catch$new;->D(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/catch$new;->B(I)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/protobuf/catch$new;->A(I)V

    :goto_0
    return-void
.end method

.method public r(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/protobuf/catch;->case(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->M(J)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->I(J)V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->F(J)V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->K(J)V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->L(J)V

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->G(J)V

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->H(J)V

    goto :goto_0

    .line 9
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->N(J)V

    goto :goto_0

    .line 10
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->O(J)V

    goto :goto_0

    .line 11
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/catch$new;->J(J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synchronized(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/catch$new;->q(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/catch$new;->r(J)V

    :goto_0
    return-void
.end method

.method public this()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/protobuf/catch;->new:I

    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->u()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/catch;->new:I

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->t()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    .line 6
    iput-wide v0, p0, Lcom/google/protobuf/catch$new;->break:J

    :cond_0
    return-void
.end method

.method public try([BII)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->z()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 2
    iget v0, p0, Lcom/google/protobuf/catch;->new:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/catch;->new:I

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/catch;->for:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/for;->class([BII)Lcom/google/protobuf/for;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->w()V

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/catch$new;->catch:J

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/catch$new;->t()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/catch$new;->goto:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeBool(IZ)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    int-to-byte p2, p2

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->do(B)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/throw;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 3
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->q(I)V

    const/4 p2, 0x2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeEndGroup(I)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeFixed32(II)V
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->continue(I)V

    const/4 p2, 0x5

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/catch$new;->interface(J)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeGroup(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/catch$new;->l(II)V

    .line 2
    invoke-static {}, Lcom/google/protobuf/q0;->do()Lcom/google/protobuf/q0;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/q0;->catch(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    const/4 p2, 0x3

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/catch$new;->l(II)V

    .line 5
    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    const/4 p2, 0x3

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->synchronized(I)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/catch$new;->break()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/q0;->do()Lcom/google/protobuf/q0;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/google/protobuf/q0;->catch(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/catch$new;->break()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->q(I)V

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/catch$new;->break()I

    move-result v0

    .line 8
    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/catch$new;->break()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 p3, 0xa

    .line 10
    invoke-virtual {p0, p3}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->q(I)V

    const/4 p2, 0x2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeSInt32(II)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->e(I)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/catch$new;->h(J)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeStartGroup(I)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/catch$new;->break()I

    move-result v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->k(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/catch$new;->break()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->q(I)V

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/catch$new;->q(I)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/catch$new;->default(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/catch$new;->r(J)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/catch$new;->l(II)V

    return-void
.end method
