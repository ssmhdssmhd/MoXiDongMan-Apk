.class public Landroid/support/v4/oa0;
.super Landroid/support/v4/transient;
.source "SourceFile"


# instance fields
.field private default:[B

.field private extends:J

.field private finally:Ljava/lang/String;

.field private return:I

.field private static:I

.field private switch:I

.field private throws:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/transient;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v4/oa0;->static:I

    .line 3
    sget-object v0, Landroid/support/v4/ej0;->CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

    invoke-virtual {p0, v0}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/oa0;->switch:I

    return v0
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/oa0;->default:[B

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/oa0;->finally:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/oa0;->static:I

    return v0
.end method

.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/oa0;->throws:[B

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/oa0;->extends:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/oa0;->return:I

    return v0
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/oa0;->switch:I

    return-void
.end method

.method public j([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/oa0;->default:[B

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/oa0;->finally:Ljava/lang/String;

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/oa0;->static:I

    return-void
.end method

.method public m([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/oa0;->throws:[B

    return-void
.end method

.method public n(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/oa0;->extends:J

    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/oa0;->return:I

    return-void
.end method
