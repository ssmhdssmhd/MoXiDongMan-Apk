.class Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->onActivityCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper$1;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEdgeTouch(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper$1;->this$0:Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;->access$000(Lcom/wsw/cospa/widget/swipe/SwipeBackActivityHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/widget/swipe/Utils;->convertActivityToTranslucent(Landroid/app/Activity;)V

    return-void
.end method

.method public onScrollOverThreshold()V
    .locals 0

    return-void
.end method

.method public onScrollStateChange(IF)V
    .locals 0

    return-void
.end method
