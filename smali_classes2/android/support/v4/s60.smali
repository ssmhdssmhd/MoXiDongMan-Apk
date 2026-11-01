.class public final Landroid/support/v4/s60;
.super Landroid/support/v4/oc1;
.source "SourceFile"


# instance fields
.field private final case:Ljava/lang/String;

.field private final for:[Ljava/lang/String;

.field private final if:[Ljava/lang/String;

.field private final new:[Ljava/lang/String;

.field private final try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 1
    invoke-direct/range {v1 .. v6}, Landroid/support/v4/s60;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/zxing/client/result/else;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/else;

    invoke-direct {p0, v0}, Landroid/support/v4/oc1;-><init>(Lcom/google/zxing/client/result/else;)V

    .line 3
    iput-object p1, p0, Landroid/support/v4/s60;->if:[Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/support/v4/s60;->for:[Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroid/support/v4/s60;->new:[Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroid/support/v4/s60;->try:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Landroid/support/v4/s60;->case:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s60;->try:Ljava/lang/String;

    return-object v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s60;->case:Ljava/lang/String;

    return-object v0
.end method

.method public catch()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s60;->if:[Ljava/lang/String;

    return-object v0
.end method

.method public do()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Landroid/support/v4/s60;->if:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/s60;->for:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v1, p0, Landroid/support/v4/s60;->new:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    iget-object v1, p0, Landroid/support/v4/s60;->try:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6
    iget-object v1, p0, Landroid/support/v4/s60;->case:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s60;->for:[Ljava/lang/String;

    return-object v0
.end method

.method public goto()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/s60;->if:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public this()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mailto:"

    return-object v0
.end method

.method public try()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/s60;->new:[Ljava/lang/String;

    return-object v0
.end method
