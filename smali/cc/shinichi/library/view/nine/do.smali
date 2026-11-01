.class public final Lcc/shinichi/library/view/nine/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/shinichi/library/view/nine/do$do;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->catch()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->break(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static case(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->else()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->case(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static catch(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->class()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->catch(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static class(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->const()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->class(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static const(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->final()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->const(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static default(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->package(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->default(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static do(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->if()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->do(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static else(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->goto()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->else(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static extends(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->private(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->extends(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static final(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->super()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->final(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static finally(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->abstract(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->finally(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static for(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->new()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->for(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static goto(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->this()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->goto(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static if(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->for()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->if(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static import(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->return(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->import(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static native(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->static(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->native(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static new(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->try()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->new(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static package(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->continue(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->package(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static public(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->switch(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->public(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static return(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->throws(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->return(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static static(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->default(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->static(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static super(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->import(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->super(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static switch(Landroid/view/View;I)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->extends(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->switch(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public static this(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->break()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->this(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static throw(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->native(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->throw(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public static throws(Landroid/view/View;I)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->finally(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->throws(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public static try(Landroid/view/View;)F
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/y1;->case()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcc/shinichi/library/view/nine/do$do;->try(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static while(Landroid/view/View;F)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/y1;->while:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/y1;->volatile(Landroid/view/View;)Landroid/support/v4/y1;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v4/y1;->public(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do$do;->while(Landroid/view/View;F)V

    :goto_0
    return-void
.end method
