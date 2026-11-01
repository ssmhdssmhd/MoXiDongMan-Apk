.class public final Landroid/support/v4/xd2;
.super Landroid/support/v4/oc1;
.source "SourceFile"


# instance fields
.field private final break:Ljava/lang/String;

.field private final case:Ljava/lang/String;

.field private final else:Ljava/lang/String;

.field private final for:Ljava/lang/String;

.field private final goto:I

.field private final if:Ljava/lang/String;

.field private final new:Ljava/lang/String;

.field private final this:C

.field private final try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/else;->VIN:Lcom/google/zxing/client/result/else;

    invoke-direct {p0, v0}, Landroid/support/v4/oc1;-><init>(Lcom/google/zxing/client/result/else;)V

    .line 2
    iput-object p1, p0, Landroid/support/v4/xd2;->if:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/support/v4/xd2;->for:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/support/v4/xd2;->new:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroid/support/v4/xd2;->try:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Landroid/support/v4/xd2;->case:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Landroid/support/v4/xd2;->else:Ljava/lang/String;

    .line 8
    iput p7, p0, Landroid/support/v4/xd2;->goto:I

    .line 9
    iput-char p8, p0, Landroid/support/v4/xd2;->this:C

    .line 10
    iput-object p9, p0, Landroid/support/v4/xd2;->break:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xd2;->else:Ljava/lang/String;

    return-object v0
.end method

.method public case()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/xd2;->goto:I

    return v0
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xd2;->new:Ljava/lang/String;

    return-object v0
.end method

.method public class()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xd2;->try:Ljava/lang/String;

    return-object v0
.end method

.method public const()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xd2;->for:Ljava/lang/String;

    return-object v0
.end method

.method public do()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Landroid/support/v4/xd2;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v2, p0, Landroid/support/v4/xd2;->new:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Landroid/support/v4/xd2;->try:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v3, p0, Landroid/support/v4/xd2;->case:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget v3, p0, Landroid/support/v4/xd2;->goto:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-char v3, p0, Landroid/support/v4/xd2;->this:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Landroid/support/v4/xd2;->break:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()C
    .locals 1

    .line 1
    iget-char v0, p0, Landroid/support/v4/xd2;->this:C

    return v0
.end method

.method public goto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xd2;->break:Ljava/lang/String;

    return-object v0
.end method

.method public this()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xd2;->if:Ljava/lang/String;

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xd2;->case:Ljava/lang/String;

    return-object v0
.end method
