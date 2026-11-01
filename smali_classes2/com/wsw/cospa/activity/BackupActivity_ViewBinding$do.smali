.class Lcom/wsw/cospa/activity/BackupActivity_ViewBinding$do;
.super Landroid/support/v4/fx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/BackupActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/wsw/cospa/activity/BackupActivity;

.field public final synthetic new:Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;Lcom/wsw/cospa/activity/BackupActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding$do;->new:Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;

    iput-object p2, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding$do;->for:Lcom/wsw/cospa/activity/BackupActivity;

    invoke-direct {p0}, Landroid/support/v4/fx;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding$do;->for:Lcom/wsw/cospa/activity/BackupActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/BackupActivity;->onSaveComicClick()V

    return-void
.end method
