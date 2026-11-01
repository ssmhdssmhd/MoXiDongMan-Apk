.class public Landroid/support/v4/nl0;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field private static final new:Ljava/lang/String; = "VMS_IDLG_SDK_Observer"


# instance fields
.field private do:Ljava/lang/String;

.field private for:Lorg/repackage/com/vivo/identifier/do;

.field private if:I


# direct methods
.method public constructor <init>(Lorg/repackage/com/vivo/identifier/do;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Landroid/support/v4/nl0;->for:Lorg/repackage/com/vivo/identifier/do;

    .line 3
    iput p2, p0, Landroid/support/v4/nl0;->if:I

    .line 4
    iput-object p3, p0, Landroid/support/v4/nl0;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/support/v4/nl0;->for:Lorg/repackage/com/vivo/identifier/do;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Landroid/support/v4/nl0;->if:I

    iget-object v1, p0, Landroid/support/v4/nl0;->do:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/repackage/com/vivo/identifier/do;->new(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
