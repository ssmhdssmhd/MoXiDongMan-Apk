.class Lcom/scwang/smartrefresh/header/PhoenixHeader$do;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/PhoenixHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/header/PhoenixHeader;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/PhoenixHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/PhoenixHeader$do;->do:Lcom/scwang/smartrefresh/header/PhoenixHeader;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/PhoenixHeader$do;->do:Lcom/scwang/smartrefresh/header/PhoenixHeader;

    .line 2
    iput p1, p2, Lcom/scwang/smartrefresh/header/PhoenixHeader;->this:F

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    return-void
.end method
