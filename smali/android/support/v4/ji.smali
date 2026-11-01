.class public final synthetic Landroid/support/v4/ji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ji;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    return-void
.end method


# virtual methods
.method public final onChooseOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ji;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method
