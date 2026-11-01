.class public final Landroid/support/v4/mx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final break:I

.field private case:Ljava/lang/Integer;

.field private final do:[B

.field private else:Ljava/lang/Integer;

.field private final for:Ljava/lang/String;

.field private goto:Ljava/lang/Object;

.field private if:I

.field private final new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final this:I

.field private final try:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/mx;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v4/mx;->do:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    :goto_0
    iput p1, p0, Landroid/support/v4/mx;->if:I

    .line 5
    iput-object p2, p0, Landroid/support/v4/mx;->for:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Landroid/support/v4/mx;->new:Ljava/util/List;

    .line 7
    iput-object p4, p0, Landroid/support/v4/mx;->try:Ljava/lang/String;

    .line 8
    iput p6, p0, Landroid/support/v4/mx;->this:I

    .line 9
    iput p5, p0, Landroid/support/v4/mx;->break:I

    return-void
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/mx;->for:Ljava/lang/String;

    return-object v0
.end method

.method public case()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/mx;->goto:Ljava/lang/Object;

    return-object v0
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/mx;->this:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v4/mx;->break:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public class(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/mx;->else:Ljava/lang/Integer;

    return-void
.end method

.method public const(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/mx;->case:Ljava/lang/Integer;

    return-void
.end method

.method public do()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/mx;->new:Ljava/util/List;

    return-object v0
.end method

.method public else()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/mx;->do:[B

    return-object v0
.end method

.method public final(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/mx;->if:I

    return-void
.end method

.method public for()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/mx;->else:Ljava/lang/Integer;

    return-object v0
.end method

.method public goto()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/mx;->this:I

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/mx;->try:Ljava/lang/String;

    return-object v0
.end method

.method public new()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/mx;->case:Ljava/lang/Integer;

    return-object v0
.end method

.method public super(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/mx;->goto:Ljava/lang/Object;

    return-void
.end method

.method public this()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/mx;->break:I

    return v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/mx;->if:I

    return v0
.end method
