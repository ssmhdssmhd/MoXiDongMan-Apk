.class public final synthetic Landroid/support/v4/xh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/xh;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iput p2, p0, Landroid/support/v4/xh;->if:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/xh;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget v1, p0, Landroid/support/v4/xh;->if:I

    invoke-static {v0, v1, p1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->continue(Lcom/wsw/cospa/activity/ChapterBrowseActivity;ILandroid/content/DialogInterface;I)V

    return-void
.end method
