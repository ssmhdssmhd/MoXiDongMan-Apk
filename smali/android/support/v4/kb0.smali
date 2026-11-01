.class public final synthetic Landroid/support/v4/kb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/FindCategoryAdapter;

.field public final synthetic if:Lcom/wsw/cospa/vo/FindChildVo;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/FindCategoryAdapter;Lcom/wsw/cospa/vo/FindChildVo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/kb0;->do:Lcom/wsw/cospa/adapter/FindCategoryAdapter;

    iput-object p2, p0, Landroid/support/v4/kb0;->if:Lcom/wsw/cospa/vo/FindChildVo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/kb0;->do:Lcom/wsw/cospa/adapter/FindCategoryAdapter;

    iget-object v1, p0, Landroid/support/v4/kb0;->if:Lcom/wsw/cospa/vo/FindChildVo;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->do(Lcom/wsw/cospa/adapter/FindCategoryAdapter;Lcom/wsw/cospa/vo/FindChildVo;Landroid/view/View;)V

    return-void
.end method
