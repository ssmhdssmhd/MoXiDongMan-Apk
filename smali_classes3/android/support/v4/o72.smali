.class public Landroid/support/v4/o72;
.super Landroid/support/v4/m72;
.source "SourceFile"


# instance fields
.field public alertDescription:S


# direct methods
.method public constructor <init>(S)V
    .locals 2

    invoke-static {p1}, Landroid/support/v4/z0;->if(S)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/m72;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-short p1, p0, Landroid/support/v4/o72;->alertDescription:S

    return-void
.end method


# virtual methods
.method public getAlertDescription()S
    .locals 1

    iget-short v0, p0, Landroid/support/v4/o72;->alertDescription:S

    return v0
.end method
