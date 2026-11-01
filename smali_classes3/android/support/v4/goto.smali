.class public Landroid/support/v4/goto;
.super Landroid/support/v4/qk2;
.source "SourceFile"


# instance fields
.field private case:Landroid/support/v4/hq;

.field private for:Landroid/support/v4/x0;

.field private if:I

.field private new:Ljava/lang/String;

.field private try:Landroid/support/v4/w0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qk2;-><init>()V

    .line 2
    sget-object v0, Landroid/support/v4/ej0;->AES_EXTRA_DATA_RECORD:Landroid/support/v4/ej0;

    invoke-virtual {p0, v0}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    const/4 v0, 0x7

    .line 3
    iput v0, p0, Landroid/support/v4/goto;->if:I

    .line 4
    sget-object v0, Landroid/support/v4/x0;->TWO:Landroid/support/v4/x0;

    iput-object v0, p0, Landroid/support/v4/goto;->for:Landroid/support/v4/x0;

    const-string v0, "AE"

    .line 5
    iput-object v0, p0, Landroid/support/v4/goto;->new:Ljava/lang/String;

    .line 6
    sget-object v0, Landroid/support/v4/w0;->KEY_STRENGTH_256:Landroid/support/v4/w0;

    iput-object v0, p0, Landroid/support/v4/goto;->try:Landroid/support/v4/w0;

    .line 7
    sget-object v0, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    iput-object v0, p0, Landroid/support/v4/goto;->case:Landroid/support/v4/hq;

    return-void
.end method


# virtual methods
.method public break(Landroid/support/v4/hq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/goto;->case:Landroid/support/v4/hq;

    return-void
.end method

.method public case()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/goto;->if:I

    return v0
.end method

.method public catch(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/goto;->if:I

    return-void
.end method

.method public class(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/goto;->new:Ljava/lang/String;

    return-void
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/goto;->new:Ljava/lang/String;

    return-object v0
.end method

.method public for()Landroid/support/v4/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/goto;->try:Landroid/support/v4/w0;

    return-object v0
.end method

.method public goto(Landroid/support/v4/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/goto;->try:Landroid/support/v4/w0;

    return-void
.end method

.method public new()Landroid/support/v4/x0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/goto;->for:Landroid/support/v4/x0;

    return-object v0
.end method

.method public this(Landroid/support/v4/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/goto;->for:Landroid/support/v4/x0;

    return-void
.end method

.method public try()Landroid/support/v4/hq;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/goto;->case:Landroid/support/v4/hq;

    return-object v0
.end method
