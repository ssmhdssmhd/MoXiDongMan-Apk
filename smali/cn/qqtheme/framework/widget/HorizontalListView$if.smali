.class Lcn/qqtheme/framework/widget/HorizontalListView$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/qqtheme/framework/widget/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcn/qqtheme/framework/widget/HorizontalListView;


# direct methods
.method public constructor <init>(Lcn/qqtheme/framework/widget/HorizontalListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/qqtheme/framework/widget/HorizontalListView$if;->do:Lcn/qqtheme/framework/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/widget/HorizontalListView$if;->do:Lcn/qqtheme/framework/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
