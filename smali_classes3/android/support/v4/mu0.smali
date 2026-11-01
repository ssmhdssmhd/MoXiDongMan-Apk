.class public Landroid/support/v4/mu0;
.super Landroid/support/v4/transient;
.source "SourceFile"


# instance fields
.field private return:[B

.field private static:J

.field private switch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/transient;-><init>()V

    .line 2
    sget-object v0, Landroid/support/v4/ej0;->LOCAL_FILE_HEADER:Landroid/support/v4/ej0;

    invoke-virtual {p0, v0}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/mu0;->return:[B

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/mu0;->static:J

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/mu0;->switch:Z

    return v0
.end method

.method public e([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/mu0;->return:[B

    return-void
.end method

.method public f(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/mu0;->static:J

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/mu0;->switch:Z

    return-void
.end method
