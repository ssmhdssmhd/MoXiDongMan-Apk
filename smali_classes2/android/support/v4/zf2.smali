.class public final Landroid/support/v4/zf2;
.super Landroid/support/v4/oc1;
.source "SourceFile"


# instance fields
.field private final case:Ljava/lang/String;

.field private final else:Ljava/lang/String;

.field private final for:Ljava/lang/String;

.field private final goto:Ljava/lang/String;

.field private final if:Ljava/lang/String;

.field private final new:Ljava/lang/String;

.field private final this:Ljava/lang/String;

.field private final try:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/zf2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v8}, Landroid/support/v4/zf2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/google/zxing/client/result/else;->WIFI:Lcom/google/zxing/client/result/else;

    invoke-direct {p0, v0}, Landroid/support/v4/oc1;-><init>(Lcom/google/zxing/client/result/else;)V

    .line 4
    iput-object p2, p0, Landroid/support/v4/zf2;->if:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Landroid/support/v4/zf2;->for:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Landroid/support/v4/zf2;->new:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Landroid/support/v4/zf2;->try:Z

    .line 8
    iput-object p5, p0, Landroid/support/v4/zf2;->case:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Landroid/support/v4/zf2;->else:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Landroid/support/v4/zf2;->goto:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Landroid/support/v4/zf2;->this:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/zf2;->this:Ljava/lang/String;

    return-object v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/zf2;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/zf2;->if:Ljava/lang/String;

    return-object v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/zf2;->try:Z

    return v0
.end method

.method public do()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Landroid/support/v4/zf2;->if:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/zf2;->for:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v1, p0, Landroid/support/v4/zf2;->new:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    iget-boolean v1, p0, Landroid/support/v4/zf2;->try:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/zf2;->case:Ljava/lang/String;

    return-object v0
.end method

.method public goto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/zf2;->for:Ljava/lang/String;

    return-object v0
.end method

.method public this()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/zf2;->new:Ljava/lang/String;

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/zf2;->else:Ljava/lang/String;

    return-object v0
.end method
