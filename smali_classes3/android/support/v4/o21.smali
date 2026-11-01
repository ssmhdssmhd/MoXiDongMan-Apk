.class public abstract Landroid/support/v4/o21;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do([I[I[I)V
    .locals 13

    invoke-static {p0, p1, p2}, Landroid/support/v4/k21;->private([I[I[I)V

    const/16 v1, 0x8

    const/16 v3, 0x8

    const/16 v5, 0x10

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v4/k21;->package([II[II[II)V

    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-static {p2, v0, p2, v1}, Landroid/support/v4/k21;->else([II[II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v3, p2, v0, v3}, Landroid/support/v4/k21;->try([II[III)I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x18

    invoke-static {p2, v5, p2, v1, v4}, Landroid/support/v4/k21;->try([II[III)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v4

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v12

    const/16 v7, 0x8

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v8, p0

    move-object v10, v4

    invoke-static/range {v6 .. v11}, Landroid/support/v4/k21;->throw([II[II[II)Z

    move-result p0

    move-object v6, p1

    move-object v8, p1

    move-object v10, v12

    invoke-static/range {v6 .. v11}, Landroid/support/v4/k21;->throw([II[II[II)Z

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Landroid/support/v4/k21;->final()[I

    move-result-object p1

    invoke-static {v4, v12, p1}, Landroid/support/v4/k21;->private([I[I[I)V

    if-eqz p0, :cond_1

    invoke-static {v1, p1, v3, p2, v0}, Landroid/support/v4/q21;->class(I[II[II)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {v1, p1, v3, p2, v0}, Landroid/support/v4/q21;->U(I[II[II)I

    move-result p0

    :goto_1
    add-int/2addr v2, p0

    const/16 p0, 0x20

    invoke-static {p0, v2, p2, v5}, Landroid/support/v4/q21;->final(II[II)I

    return-void
.end method

.method public static if([I[I)V
    .locals 12

    invoke-static {p0, p1}, Landroid/support/v4/k21;->b([I[I)V

    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Landroid/support/v4/k21;->a([II[II)V

    invoke-static {p1, v0, p1, v1}, Landroid/support/v4/k21;->else([II[II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v3, p1, v0, v3}, Landroid/support/v4/k21;->try([II[III)I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x18

    invoke-static {p1, v5, p1, v1, v4}, Landroid/support/v4/k21;->try([II[III)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {}, Landroid/support/v4/k21;->class()[I

    move-result-object v4

    const/16 v7, 0x8

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v8, p0

    move-object v10, v4

    invoke-static/range {v6 .. v11}, Landroid/support/v4/k21;->throw([II[II[II)Z

    invoke-static {}, Landroid/support/v4/k21;->final()[I

    move-result-object p0

    invoke-static {v4, p0}, Landroid/support/v4/k21;->b([I[I)V

    invoke-static {v1, p0, v3, p1, v0}, Landroid/support/v4/q21;->U(I[II[II)I

    move-result p0

    add-int/2addr v2, p0

    const/16 p0, 0x20

    invoke-static {p0, v2, p1, v5}, Landroid/support/v4/q21;->final(II[II)I

    return-void
.end method
