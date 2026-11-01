.class public final synthetic Landroid/support/v4/pi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/pi;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pi;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Ljava/lang/Boolean;)V

    return-void
.end method
