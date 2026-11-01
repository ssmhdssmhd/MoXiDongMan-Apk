.class public Landroid/support/v4/oj2;
.super Landroid/support/v4/qk2;
.source "SourceFile"


# instance fields
.field private break:J

.field private case:I

.field private catch:[B

.field private else:J

.field private for:I

.field private goto:J

.field private if:J

.field private new:I

.field private this:J

.field private try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qk2;-><init>()V

    return-void
.end method


# virtual methods
.method public break()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/oj2;->else:J

    return-wide v0
.end method

.method public case()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/oj2;->break:J

    return-wide v0
.end method

.method public catch()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/oj2;->for:I

    return v0
.end method

.method public class()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/oj2;->new:I

    return v0
.end method

.method public const([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/oj2;->catch:[B

    return-void
.end method

.method public else()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/oj2;->this:J

    return-wide v0
.end method

.method public final(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/oj2;->try:I

    return-void
.end method

.method public for()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/oj2;->catch:[B

    return-object v0
.end method

.method public goto()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/oj2;->if:J

    return-wide v0
.end method

.method public import(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/oj2;->if:J

    return-void
.end method

.method public native(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/oj2;->goto:J

    return-void
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/oj2;->try:I

    return v0
.end method

.method public public(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/oj2;->else:J

    return-void
.end method

.method public return(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/oj2;->for:I

    return-void
.end method

.method public static(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/oj2;->new:I

    return-void
.end method

.method public super(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/oj2;->case:I

    return-void
.end method

.method public this()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/oj2;->goto:J

    return-wide v0
.end method

.method public throw(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/oj2;->break:J

    return-void
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/oj2;->case:I

    return v0
.end method

.method public while(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/oj2;->this:J

    return-void
.end method
