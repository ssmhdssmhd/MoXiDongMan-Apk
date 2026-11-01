.class public final synthetic Landroid/support/v4/uo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

.field public final synthetic for:Lcom/wsw/cospa/bean/ComicSourceBean;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ComicSourceAdapter;ILcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/uo;->do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    iput p2, p0, Landroid/support/v4/uo;->if:I

    iput-object p3, p0, Landroid/support/v4/uo;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/uo;->do:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    iget v1, p0, Landroid/support/v4/uo;->if:I

    iget-object v2, p0, Landroid/support/v4/uo;->for:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->catch(Lcom/wsw/cospa/adapter/ComicSourceAdapter;ILcom/wsw/cospa/bean/ComicSourceBean;Landroid/view/View;)V

    return-void
.end method
