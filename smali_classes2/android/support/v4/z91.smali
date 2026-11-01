.class public final Landroid/support/v4/z91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private break:I

.field private case:Ljava/lang/String;

.field private catch:[I

.field private do:I

.field private else:Ljava/lang/String;

.field private for:Z

.field private goto:J

.field private if:Ljava/lang/String;

.field private new:I

.field private this:J

.field private try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v4/z91;->new:I

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Landroid/support/v4/z91;->goto:J

    .line 4
    iput-wide v1, p0, Landroid/support/v4/z91;->this:J

    .line 5
    iput v0, p0, Landroid/support/v4/z91;->break:I

    return-void
.end method


# virtual methods
.method public break()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/z91;->this:J

    return-wide v0
.end method

.method public case()[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/z91;->catch:[I

    return-object v0
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/z91;->for:Z

    return v0
.end method

.method public class(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/z91;->case:Ljava/lang/String;

    return-void
.end method

.method public const(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/z91;->break:I

    return-void
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/z91;->case:Ljava/lang/String;

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/z91;->new:I

    return v0
.end method

.method public final(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/z91;->if:Ljava/lang/String;

    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/z91;->if:Ljava/lang/String;

    return-object v0
.end method

.method public goto()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/z91;->do:I

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/z91;->break:I

    return v0
.end method

.method public import([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/support/v4/z91;->catch:[I

    return-void
.end method

.method public native(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/z91;->new:I

    return-void
.end method

.method public new()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/z91;->else:Ljava/lang/String;

    return-object v0
.end method

.method public public(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/z91;->do:I

    return-void
.end method

.method public return(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/z91;->try:Ljava/lang/String;

    return-void
.end method

.method public static(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/z91;->this:J

    return-void
.end method

.method public super(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/z91;->else:Ljava/lang/String;

    return-void
.end method

.method public this()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/z91;->try:Ljava/lang/String;

    return-object v0
.end method

.method public throw(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/z91;->goto:J

    return-void
.end method

.method public try()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/z91;->goto:J

    return-wide v0
.end method

.method public while(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/z91;->for:Z

    return-void
.end method
