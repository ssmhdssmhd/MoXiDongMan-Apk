.class public Landroid/support/v4/qa0;
.super Landroid/support/v4/gp0;
.source "SourceFile"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private isDirectory:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v4/gp0;-><init>()V

    const-string v0, "/"

    .line 2
    iput-object v0, p0, Landroid/support/v4/qa0;->path:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/support/v4/qa0;->size:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/qa0;->isDirectory:Z

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/qa0;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/qa0;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/qa0;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/qa0;->size:J

    return-wide v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/qa0;->isDirectory:Z

    return v0
.end method

.method public setDirectory(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/qa0;->isDirectory:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/qa0;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/qa0;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/qa0;->path:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/qa0;->size:J

    return-void
.end method
