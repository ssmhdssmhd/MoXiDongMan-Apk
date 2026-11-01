.class Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$for;->do:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$for;->do:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->if(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$for;->do:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->if(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;

    move-result-object p1

    invoke-interface {p1}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;->onActivityBackPressed()V

    :cond_0
    return-void
.end method
