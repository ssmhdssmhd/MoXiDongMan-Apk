.class public final synthetic Landroid/support/v4/sf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/sf;->do:Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;

    iput p2, p0, Landroid/support/v4/sf;->if:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/sf;->do:Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;

    iget v1, p0, Landroid/support/v4/sf;->if:I

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;->do(Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;ILandroid/view/View;)V

    return-void
.end method
