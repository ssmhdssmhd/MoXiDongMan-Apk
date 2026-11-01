.class Lcom/suke/widget/SwitchButton$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/suke/widget/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/suke/widget/SwitchButton;


# direct methods
.method public constructor <init>(Lcom/suke/widget/SwitchButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/suke/widget/SwitchButton$do;->do:Lcom/suke/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/suke/widget/SwitchButton$do;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {v0}, Lcom/suke/widget/SwitchButton;->do(Lcom/suke/widget/SwitchButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/suke/widget/SwitchButton$do;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {v0}, Lcom/suke/widget/SwitchButton;->this(Lcom/suke/widget/SwitchButton;)V

    :cond_0
    return-void
.end method
