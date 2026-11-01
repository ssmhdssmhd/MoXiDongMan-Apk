.class public Landroid/support/v4/n72;
.super Landroid/support/v4/m72;
.source "SourceFile"


# instance fields
.field public alertDescription:S


# direct methods
.method public constructor <init>(S)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/n72;-><init>(SLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(SLjava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v4/z0;->if(S)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v4/m72;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-short p1, p0, Landroid/support/v4/n72;->alertDescription:S

    return-void
.end method


# virtual methods
.method public getAlertDescription()S
    .locals 1

    iget-short v0, p0, Landroid/support/v4/n72;->alertDescription:S

    return v0
.end method
