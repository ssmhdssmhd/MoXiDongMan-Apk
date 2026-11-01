.class public final synthetic Landroid/support/v4/pt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchSourceView;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/SearchSourceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/pt1;->do:Lcom/wsw/cospa/activity/SearchSourceView;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pt1;->do:Lcom/wsw/cospa/activity/SearchSourceView;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchSourceView;->for(Lcom/wsw/cospa/activity/SearchSourceView;)V

    return-void
.end method
