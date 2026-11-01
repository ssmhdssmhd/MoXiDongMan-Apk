.class public final synthetic Landroid/support/v4/di0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

.field public final synthetic for:Lcom/wsw/cospa/bean/ComicShelfBean;

.field public final synthetic if:Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/GroupManagerAdapter;Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/di0;->do:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    iput-object p2, p0, Landroid/support/v4/di0;->if:Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;

    iput-object p3, p0, Landroid/support/v4/di0;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/di0;->do:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    iget-object v1, p0, Landroid/support/v4/di0;->if:Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;

    iget-object v2, p0, Landroid/support/v4/di0;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->if(Lcom/wsw/cospa/adapter/GroupManagerAdapter;Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfBean;Landroid/view/View;)V

    return-void
.end method
