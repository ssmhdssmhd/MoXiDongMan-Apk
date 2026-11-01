.class public final synthetic Landroid/support/v4/m02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SourceFilterView;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/SourceFilterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/m02;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m02;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/activity/SourceFilterView;->try(Lcom/wsw/cospa/activity/SourceFilterView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
