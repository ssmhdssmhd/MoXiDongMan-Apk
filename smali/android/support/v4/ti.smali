.class public final synthetic Landroid/support/v4/ti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicContentImgBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ti;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iput-object p2, p0, Landroid/support/v4/ti;->if:Lcom/wsw/cospa/bean/ComicContentImgBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ti;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v1, p0, Landroid/support/v4/ti;->if:Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-static {v0, v1, p1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicContentImgBean;Landroid/content/DialogInterface;I)V

    return-void
.end method
