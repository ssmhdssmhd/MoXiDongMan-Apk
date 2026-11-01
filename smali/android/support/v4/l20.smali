.class public final synthetic Landroid/support/v4/l20;
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

    iput p1, p0, Landroid/support/v4/l20;->do:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/l20;->do:I

    check-cast p1, Lcom/wsw/cospa/bean/Switcher;

    check-cast p2, Lcom/wsw/cospa/bean/Switcher;

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->do(ILcom/wsw/cospa/bean/Switcher;Lcom/wsw/cospa/bean/Switcher;)I

    move-result p1

    return p1
.end method
