.class public final synthetic Landroid/support/v4/ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic do:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/ik;->do:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/ik;->do:I

    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    check-cast p2, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterListAdapter;->do(ILcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ChapterListBean;)I

    move-result p1

    return p1
.end method
