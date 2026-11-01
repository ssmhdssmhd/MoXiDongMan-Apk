.class public final synthetic Landroid/support/v4/ot1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchSourceView;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/SearchSourceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ot1;->do:Lcom/wsw/cospa/activity/SearchSourceView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ot1;->do:Lcom/wsw/cospa/activity/SearchSourceView;

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/activity/SearchSourceView;->do(Lcom/wsw/cospa/activity/SearchSourceView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
